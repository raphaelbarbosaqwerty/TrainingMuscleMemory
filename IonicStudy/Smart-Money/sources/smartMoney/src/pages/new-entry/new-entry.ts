import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController, LoadingController, ModalController } from 'ionic-angular';
import { FormGroup ,FormBuilder, FormControl, Validators } from '@angular/forms';

import { Geolocation } from '@ionic-native/geolocation';
import { NativeGeocoder, NativeGeocoderReverseResult, NativeGeocoderOptions } from '@ionic-native/native-geocoder';
import { Camera, CameraOptions } from '@ionic-native/camera';
import { DatePicker } from '@ionic-native/date-picker';

import { CategoryDaoProvider } from '../../providers/category-dao/category-dao';
import { AccountProvider } from '../../providers/account/account';
import { ImagePreviewPage } from '../image-preview/image-preview';


@IonicPage()
@Component({
  selector: 'page-new-entry',
  templateUrl: 'new-entry.html',
})
export class NewEntryPage {
  categories = [];
  currentBalance = 0;
  entryForm: FormGroup;
  entry = {}
  operatorButtonLavel = '-R$';
  submitButtonLabel = 'Debitar';
  operation = -1;
  editMode = false;
  isChanged = false;

  constructor(public navCtrl: NavController,
    public modalCtrl: ModalController,
    public navParams: NavParams,
    public alertCtrl: AlertController,
    public loadingCtrl: LoadingController,
    public geolocation: Geolocation,
    public nativeGeocoder: NativeGeocoder,
    public camera: Camera,
    public datePicker: DatePicker,
    public account: AccountProvider,
    public categoryDao: CategoryDaoProvider,
    private builder: FormBuilder) {

      this.entryForm = builder.group({
        amount: new FormControl('', Validators.required),
        category_id: new FormControl('', Validators.required),
      });
    }

  // Reload every time the page opens
  ionViewDidLoad() { 
    const entryId = this.navParams.get('entryId');
    this.loadData(entryId);
  }

  changeOperator() {
    this.operation *= -1;
    this.loadLabels();
    this.loadCategories();
    this.detectChanges();
  }

  detectChanges() {
    this.isChanged = true;
  }

  submitForm() {
    if(this.entry['id'] > 0) {
      this.updateDB();
    } else {
      this.insertBD();
    }
    this.navCtrl.pop();
  }

  dismiss() {
    if (this.isChanged) {
      let alert = this.alertCtrl.create({
        title: 'Deseja realmente sair?',
        subTitle: 'Há informação alterada que não foi salva.',
        cssClass: 'custom-alert',
        buttons: [
          {
            text: 'Voltar',
            role: 'cancel'
          },
          {
            text: 'Sim',
            handler: () => {
              this.navCtrl.pop();
            }
          }
        ]
      });
      alert.present();
    } else {
      this.navCtrl.pop();
    }
  }

  // Insert into DB
  insertBD() {
    const amount = this.entry['amount'] * this.operation;
    const categoryId = this.entry['category_id']
    const latitude = this.entry['latitude'];
    const longitude = this.entry['longitude'];
    const address = this.entry['address'];
    const image = this.entry['image'];
    const description = this.entry['description'];
    const entryAt = this.entry['entry_at'];

    this.account
      .addEntry(amount, categoryId, description, entryAt, latitude, longitude, address, image)
        .then(() => {
          this.isChanged = false;
        });
  }

  updateDB() {
    const id = this.entry['id'];
    const amount = this.entry['amount'] * this.operation;
    const categoryId = this.entry['category_id']
    const latitude = this.entry['latitude'];
    const longitude = this.entry['longitude'];
    const address = this.entry['address'];
    const image = this.entry['image'];
    const description = this.entry['description'];
    const entryAt = this.entry['entry_at'];

    this.account
      .updateEntry(id, amount, categoryId, description, entryAt, latitude, longitude, address, image)
        .then(() => {
          this.isChanged = false;
        });

  }

  deleteEntry(entryId) {
    let alert = this.alertCtrl.create({
      title: 'Deseja apagar?',
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel'
        },
        {
          text: 'Ok',
          handler: () => {
            this.account.deleteEntry(entryId);
            this.dismiss();
          }
        }
      ]
    });
    alert.present();
  }

  loadData(entryId = null) {
    if(entryId > 0) {
      this.loadEntry(entryId);
    } else {
      this.loadCategories();
    }

    this.loadBalance();
  }

  loadEntry(entryId) {
    this.editMode = true;

    this.account.getEntry(entryId)
      .then((entry) => {
        console.log('new-entry: loading entry - ', JSON.stringify(entry));
        
        this.entry = entry;

        if (entry['amount'] < 0) {
          this.operation = -1;
          this.entry['amount'] = this.entry['amount'] * -1;
        } else {
          this.operation = 1;
        }

        this.loadLabels();
        this.loadCategories();
      });
  }

  loadBalance() {
    this.currentBalance = this.account.currentBalance();
  }

  loadCategories() {
    if (this.operation < 0 ) {
      this.categoryDao
        .getDebit()
          .then((data: any[]) => this.categories = data);
    } else {
      this.categoryDao
        .getCredit()
          .then((data: any[]) => this.categories = data);
    }

  }

  openCameraModal() {
    if ((this.entry['id'] > 0) && (this.entry['image'])) {

      let imagePreviewModal = this.modalCtrl.create(ImagePreviewPage, { image: this.entry['image'] });
      imagePreviewModal.onDidDismiss(data => {
        if (data) {
          this.entry['image'] = data.image;
          this.detectChanges();
        }
      });
      imagePreviewModal.present();

    } else {
      const options: CameraOptions = {
        quality: 50,
        correctOrientation: true,
        allowEdit: true,
        saveToPhotoAlbum: true,
        destinationType: this.camera.DestinationType.FILE_URI,
        encodingType: this.camera.EncodingType.JPEG,
        mediaType: this.camera.MediaType.PICTURE
      }

      this.camera.getPicture(options)
        .then((imageData) => {
          this.entry['image'] = imageData;

          this.detectChanges();

        }).catch((error) => {
          console.log('new-entry: error camera - ', JSON.stringify(error));

          let alert = this.alertCtrl.create({
            title: 'Erro de câmera',
            subTitle: 'Houve um erro ao ligar a câmera, por favor, certifique-se que a câmera está habilitada e com permissão.',
            buttons: ['Ok']
          });
          alert.present();
        });
    }
  }

  openGeoLocationModal() {
    let loading = this.loadingCtrl.create({
      content: 'Aguarde...'
    });
    loading.present();

    let geoCodeOptions: NativeGeocoderOptions = {
      useLocale: true,
      maxResults: 1
    };

    this.geolocation.getCurrentPosition()
      .then((position) => {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;

        this.nativeGeocoder.reverseGeocode(latitude, longitude, geoCodeOptions)
          .then((geoCodeResult: NativeGeocoderReverseResult[]) => {
            loading.dismiss();
            
            if (geoCodeResult.length > 0) {
              const locality = geoCodeResult[0].locality;
              const address = geoCodeResult[0].thoroughfare;
              const number = geoCodeResult[0].subThoroughfare;
              let completeAddress = `${address}, ${number} - ${locality}`;

              let alert = this.alertCtrl.create({
                title: 'Usar esta localização?',
                cssClass: 'custom-alert',
                subTitle: completeAddress
              });
              alert.addButton('Não');
              alert.addButton({
                text: 'Sim',
                handler: () => {
                  this.entry['latitude'] = latitude;
                  this.entry['longitude'] = longitude;
                  this.entry['address'] = completeAddress;
                  this.detectChanges();
              }});
              alert.present();
            } else {
              let alert = this.alertCtrl.create({
                title: 'Erro de localização',
                cssClass: 'custom-alert',
                subTitle: 'Não foi possível encontrar o endereço desta localização.',
                buttons: ['Ok']
              });
              alert.present();
            }

          })
          .catch((error: any) => {
            console.log('new-entry: error getting geocoding - ', error.message);
            loading.dismiss();

            let alert = this.alertCtrl.create({
              title: 'Erro de localização',
              subTitle: 'Houve um erro ao capturar o endereço da localização, por favor, certifique-se que a localização está habilitada.',
              buttons: ['Ok']
            });
            alert.present();
          });

      }).catch((error) => {
        console.log('new-entry: error getting location - ', error.message);

        loading.dismiss();

        let alert = this.alertCtrl.create({
          title: 'Erro de localização',
          subTitle: 'Houve um erro ao capturar a localização, por favor, certifique-se que a localização está habilitada e com permissão.',
          buttons: ['Ok']
        });
        alert.present();
      });
  }

  // Description
  openDescriptionModal() {
    const prompt = this.alertCtrl.create({
      title: 'Descrição'
    });
    prompt.addInput({
      name: 'description',
      placeholder: '',
      value: this.entry['description']
    });
    prompt.addButton('Cancelar');
    prompt.addButton({
      text: 'Ok',
      handler: (data) => {
        console.log('new-entry: description - ', data['description']);
        this.entry['description'] = data['description'];
        this.detectChanges();

      }
     });
     prompt.present();
  }

  // Calender
  openDateModal() {
    this.datePicker.show({
      date: this.entry['entry_at'] ? new Date(this.entry['entry_at']) : new Date(),
      mode: 'datetime',
      titleText: 'Selecione uma data',
      okText: 'Ok',
      cancelText: 'Cancelar',
      todayText: 'Hoje',
      nowText: 'Agora',
      locale: 'pt_BR',
      is24Hour: true,
      androidTheme: this.datePicker.ANDROID_THEMES.THEME_DEVICE_DEFAULT_DARK
    }).then(date => {
        console.log('new-entry: date - ', date);
        this.entry['entry_at'] = date;
        this.detectChanges();

      }
    ),
    error => console.log('new-entry: error on got date - ', JSON.stringify(error))
  }

  private loadLabels() {

    if (this.operation < 0) {
        this.operatorButtonLavel = '-R$';
        this.submitButtonLabel = (this.editMode) ? 'Salvar' : 'Debitar';
    } else {
        this.operatorButtonLavel = 'R$';
        this.submitButtonLabel = (this.editMode) ? 'Salvar' : 'Creditar';
    }
  }


}
