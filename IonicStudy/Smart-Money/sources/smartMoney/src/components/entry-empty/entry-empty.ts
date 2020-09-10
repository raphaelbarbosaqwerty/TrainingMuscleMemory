import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { ReportPage } from '../../pages/report/report';

@Component({
  selector: 'entry-empty',
  templateUrl: 'entry-empty.html'
})
export class EntryEmptyComponent {

  text: string;

  constructor(
    public navCtrl: NavController,
  ) {}

  showReport() {
    this.navCtrl.push(ReportPage);
  }

}
