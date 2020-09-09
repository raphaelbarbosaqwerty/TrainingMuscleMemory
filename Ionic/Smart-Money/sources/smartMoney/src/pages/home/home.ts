import { Component, ViewChild } from '@angular/core';
import { NavController, Events, Content } from 'ionic-angular';

import { AccountProvider } from '../../providers/account/account';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  // Get content
  @ViewChild(Content) content: Content;

  entriesByData = [];
  entriesByCategory = [];

  lastEntries = [];
  currentBalance = 0;

  constructor(
    public navCtrl: NavController,
    public events: Events,
    public account: AccountProvider) { }

  // Page live 
  ionViewDidEnter() {
    this.loadData();
  }

  // Scroll animation
  onScroll(event) {
    console.log('home: on scroll - ', this.content.scrollTop);
    this.events.publish('app:scroll', this.content.scrollTop);
  }

  // Load all methods  
  private loadData() {
    this.loadBalance();
    this.loadBalancesByDate();
    this.loadBalancesByCategory();
    this.loadLastEntries();  
  }

  private loadBalance() {
    this.account
      .loadBalance()
        .then((balance) => this.currentBalance = balance);
  }

  loadBalancesByDate() {
    this.account.lastEntriesByDate(-7)
      .then((data: any) => this.entriesByData = data);
  }

  private loadBalancesByCategory() {
    this.account.lastEntriesByCategory(-7)
      .then((data: any) => this.entriesByCategory = data);
  }

  private loadLastEntries() {
    this.account
      .lastEntries(-7)
        .then((data: any) => {
          this.lastEntries = data;
        });
  }
}
