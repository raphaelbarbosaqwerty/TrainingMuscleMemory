import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule, LOCALE_ID } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { IonicStorageModule } from '@ionic/storage';

import { registerLocaleData } from '@angular/common';
import localePt from '@angular/common/locales/pt';
import localePtExtra from '@angular/common/locales/extra/pt';

import { ComponentsModule } from '../components/components.module';

import { SplashScreen } from '@ionic-native/splash-screen';
import { StatusBar } from '@ionic-native/status-bar';
import { SQLite } from '@ionic-native/sqlite';
import { DatePicker } from '@ionic-native/date-picker';
import { Geolocation } from '@ionic-native/geolocation';
import { NativeGeocoder } from '@ionic-native/native-geocoder';
import { Camera } from '@ionic-native/camera';

import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';

import { NewEntryPageModule } from '../pages/new-entry/new-entry.module';
import { ReportPageModule } from '../pages/report/report.module';
import { ImagePreviewPageModule } from '../pages/image-preview/image-preview.module';
import { TutorialPageModule } from '../pages/tutorial/tutorial.module';

import { DatabaseProvider } from '../providers/database/database';
import { EntryDaoProvider } from '../providers/entry-dao/entry-dao';
import { CategoryDaoProvider } from '../providers/category-dao/category-dao';
import { AccountProvider } from '../providers/account/account';
import { ConfigProvider } from '../providers/config/config';

registerLocaleData(localePt, 'pt', localePtExtra);

@NgModule({
  declarations: [
    MyApp,
    HomePage
  ],
  imports: [
    BrowserModule,
    NewEntryPageModule,
    ReportPageModule,
    ImagePreviewPageModule,
    TutorialPageModule,
    ComponentsModule,
    IonicStorageModule.forRoot(),
    IonicModule.forRoot(MyApp),
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    SQLite,
    DatePicker,
    Geolocation,
    NativeGeocoder,
    Camera,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    {provide: LOCALE_ID, useValue: 'pt'},
    DatabaseProvider,
    EntryDaoProvider,
    CategoryDaoProvider,
    AccountProvider,
    ConfigProvider,
  ]
})
export class AppModule {}
