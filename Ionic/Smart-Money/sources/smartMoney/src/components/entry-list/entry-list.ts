import { Component, Input } from '@angular/core';
import { NavController } from 'ionic-angular';

import { NewEntryPage} from '../../pages/new-entry/new-entry';
import { ReportPage } from '../../pages/report/report';

@Component({
  selector: 'entry-list',
  templateUrl: 'entry-list.html'
})
export class EntryListComponent {
  @Input() entries = [];
  @Input() showActions = false;

  constructor(public navCtrl: NavController) { }

  editEntry(entry) {
    this.navCtrl.push(NewEntryPage, { entryId: entry.id });
  }

  showReport() {
    this.navCtrl.push(ReportPage);
  }
}
