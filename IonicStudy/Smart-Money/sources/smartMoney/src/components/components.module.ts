import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';

import { BalancePanelComponent } from './balance-panel/balance-panel';
import { EntrySummaryComponent } from './entry-summary/entry-summary';
import { EntryListComponent } from './entry-list/entry-list';
import { BalanceLabelComponent } from './balance-label/balance-label';
import { BalancePanelChartComponent } from './balance-panel-chart/balance-panel-chart';
import { EntryEmptyComponent } from './entry-empty/entry-empty';
import { EntrySummaryChartComponent } from './entry-summary-chart/entry-summary-chart';

@NgModule({
	declarations: [
    BalancePanelComponent,
    EntrySummaryComponent,
    EntryListComponent,
    BalanceLabelComponent,
    BalancePanelChartComponent,
    EntryEmptyComponent,
    EntrySummaryChartComponent,
  ],
	imports: [
    IonicPageModule
  ],
	exports: [
    BalancePanelComponent,
    EntrySummaryComponent,
    EntryListComponent,
    BalanceLabelComponent,
    BalancePanelChartComponent,
    EntryEmptyComponent,
    EntrySummaryChartComponent,
  ]
})
export class ComponentsModule {}
