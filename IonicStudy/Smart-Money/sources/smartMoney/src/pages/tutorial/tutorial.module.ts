import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';

import { CurrencyMaskModule } from "ng2-currency-mask";

import { TutorialPage } from './tutorial';

@NgModule({
  declarations: [
    TutorialPage,
  ],
  imports: [
    IonicPageModule.forChild(TutorialPage),
    CurrencyMaskModule
  ],
})
export class TutorialPageModule {}
