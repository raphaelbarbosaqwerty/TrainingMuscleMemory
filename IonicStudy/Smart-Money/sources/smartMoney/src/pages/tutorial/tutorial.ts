import { Component, ViewChild } from '@angular/core';
import { IonicPage, NavController, NavParams, Slides } from 'ionic-angular';
import { FormGroup, FormBuilder, FormControl, Validators } from '@angular/forms';

import { HomePage } from '../home/home';

import { AccountProvider } from '../../providers/account/account';
import { ConfigProvider } from '../../providers/config/config';


@IonicPage()
@Component({
  selector: 'page-tutorial',
  templateUrl: 'tutorial.html',
})
export class TutorialPage {
  @ViewChild(Slides) slides: Slides;

  entryForm: FormGroup;
  entry = { value: 0 };

  constructor(
    public navCtrl: NavController,
    public navParams: NavParams,
    public builder: FormBuilder,
    public account: AccountProvider,
    public config: ConfigProvider) {

    this.entryForm = builder.group({
      amount: new FormControl('', Validators.required)
    });
  }

  goToSlide(num) {
    this.slides.slideTo(num, 500);
  }

  // Init with balance
  submitForm() {
    this.account.init(this.entry['value']);
    this.goToSlide(2);
  }

  // Grant permission GPS/CAM
  grantPermissions() {
    // define tutorial as ready
    this.config.setValue('tutorialDone', true);
    this.navCtrl.setRoot(HomePage, { tutorial: true });
  }

}
