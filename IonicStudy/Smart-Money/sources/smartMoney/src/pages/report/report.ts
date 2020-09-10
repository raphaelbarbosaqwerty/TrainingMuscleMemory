import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';

import { DatePicker } from '@ionic-native/date-picker';

import { AccountProvider } from '../../providers/account/account';
import { DatePipe } from '@angular/common';
import { CategoryDaoProvider } from '../../providers/category-dao/category-dao';


@IonicPage()
@Component({
  selector: 'page-report',
  templateUrl: 'report.html',
})
export class ReportPage {
  entriesByCategory = [];
  lastEntries = [];

  categories = [];
  selectedCategories = [];

  currentBalance = 0;
  date = new Date();
  days = -7;

  dateButtonLabel = `Últimos ${this.days * -1} dias`;
  categoryButtonLabel = 'Todas Categorias';

  datePipe = new DatePipe('pt_BR');


  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    public alertCtrl: AlertController,
    public datePicker: DatePicker,
    public account: AccountProvider,
    public categoryDao: CategoryDaoProvider) {
  }

  ionViewDidLoad() {
    this.loadData();
  }

  selectDate() {
    this.datePicker.show({
      date: this.date,
      mode: 'date',
      titleText: 'Selecione uma data',
      okText: 'Ok',
      cancelText: 'Cancelar',
      todayText: 'Hoje',
      nowText: 'Agora',
      locale: 'pt_BR',
      is24Hour: true,
      androidTheme: this.datePicker.ANDROID_THEMES.THEME_DEVICE_DEFAULT_DARK
    }).then(date => {
      this.date = date;

        let today = new Date();
        today.setHours(0);
        today.setMinutes(0);
        today.setSeconds(0);

        const one_day = 1000*60*60*24;
        const date1_ms = today.getTime();
        const date2_ms = date.getTime();
        const difference_ms = date2_ms - date1_ms;

        this.days = Math.ceil(difference_ms / one_day);
        this.dateButtonLabel = this.datePipe.transform(date);

      }
    );
  }

  //Cool alert
  selectCategory() {
      let alert = this.alertCtrl.create({
        title: 'Categorias',
        cssClass: 'custom-alert'
      });

      for(let category of this.categories) {
        alert.addInput({
          type: 'checkbox',
          label: category.name,
          value: category.id,
          checked: this.selectedCategories.length == 0 || this.selectedCategories.find(item => item.id == category.id) != null
        });
      }

      alert.addButton('Cancelar');
      alert.addButton({
        text: 'Ok',
        handler: categoriesID => {
            if(categoriesID.length == 0) {
              this.categoryButtonLabel = 'Todas Categorias';
            } else if (categoriesID.length == 1) {
              this.categoryButtonLabel = 'Uma categoria';
            } else if (categoriesID.length == this.categories.length) {
              this.categoryButtonLabel = 'Todas Categorias';
            } else {
              this.categoryButtonLabel = `${categoriesID.length} Categorias`;
            }

            this.selectedCategories = this.categories.filter(item => categoriesID.indexOf(item.id) > -1);
            
            console.log('Categorias selecionadas ', JSON.stringify(categoriesID));
            console.log('Categorias carregadas ', JSON.stringify(this.selectedCategories));

            this.loadValues();
        }
    });

      alert.present();
  }

  dismiss() {
    this.navCtrl.pop();
  }
  
  private loadData() {
    this.loadBalance();
    this.loadValues();
    this.loadCategories();
    
  }

  private loadValues() {
    this.loadBalancesByCategory();
    this.loadLastEntries();
  }

  private loadBalance() {
    this.currentBalance = this.account.currentBalance();
  }

    // Load categories
  private loadCategories() {
    this.categoryDao.getAll()
      .then((data: any[]) => {
        this.categories = data;
        this.selectedCategories = data;
      });
  }

    // Load balances cate
    private loadBalancesByCategory() {
      this.account.lastEntriesByCategory(this.days, this.selectedCategories)
        .then((data: any) => this.entriesByCategory = data);
    }
  
    // Load entries
    private loadLastEntries() {
      this.account
        .lastEntries(this.days, this.selectedCategories)
          .then((data: any) => {
            this.lastEntries = data;
          });
    }
}
