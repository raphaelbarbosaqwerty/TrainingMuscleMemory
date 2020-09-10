import { Component } from '@angular/core';
import { IonicPage, ViewController, NavParams } from 'ionic-angular';

import { Camera, CameraOptions } from '@ionic-native/camera';
@IonicPage()
@Component({
  selector: 'page-image-preview',
  templateUrl: 'image-preview.html',
})
export class ImagePreviewPage {
  image;
  newImage;

  constructor(
    public viewCtrl: ViewController, 
    public navParams: NavParams,
    public camera: Camera) {
  
    // Converting img && saving params
    this.image = window['Ionic']['WebView'].convertFileSrc(navParams.get('image'));
  }

  dismiss(data) {
    this.viewCtrl.dismiss(data);
  }

  openCameraModal() {
      const options: CameraOptions = {
        quality: 50, // Read quality
        correctOrientation: true,
        allowEdit: true,
        saveToPhotoAlbum: true,
        destinationType: this.camera.DestinationType.FILE_URI,
        encodingType: this.camera.EncodingType.JPEG,
        mediaType: this.camera.MediaType.PICTURE
      }
  
      this.camera.getPicture(options)
        .then((imageData) => {
          this.image = window['Ionic']['WebView'].convertFileSrc(imageData);
          this.newImage = imageData;
        }).catch((error) => {
          console.log('image-preview: error camera - ', JSON.stringify(error));
        });
    }

  

  save() {
    this.dismiss({ image: this.newImage });
  }

}
