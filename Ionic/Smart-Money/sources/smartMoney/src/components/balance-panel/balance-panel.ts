import { Component, Input, ViewChild } from '@angular/core';
import { NavController, Events } from 'ionic-angular';
import { NewEntryPage } from '../../pages/new-entry/new-entry';

@Component({
  selector: 'balance-panel',
  templateUrl: 'balance-panel.html'
})
export class BalancePanelComponent {
  @Input() currentBalance: number;
  @Input() entries = [];

  @ViewChild('balanceContainer') balanceContainer;
  @ViewChild('balanceLabel') balanceLabel;
  @ViewChild('balanceValue') balanceValue;
  @ViewChild('balanceChart') balanceChart;
  
  constructor(
    public navCtrl: NavController,
    public events: Events) { }

  // Scroll
  ngOnInit() {
    this.events.subscribe('app:scroll', (top) => this.onScroll(top));
  }

  onScroll(top) {
    const scale = top / this.balanceContainer.nativeElement.offsetHeight; // 0 -> 1

    console.log('balance-panel: on scroll - ', top, scale);

    if (scale >= 0 && scale <= 1) {
      this.balanceContainer.nativeElement.style.webkitTransform = `translate3d(0, -${65*scale}px, 0)`;
      this.balanceContainer.nativeElement.style.opacity = .95/scale;
      this.balanceLabel.nativeElement.style.webkitTransform = `translate3d(0, ${55*scale}px, 0)`;
      this.balanceValue.nativeElement.style.webkitTransform = `translate3d(0, ${25*scale}px, 0)`;
      this.balanceChart.nativeElement.style.opacity = .5/scale;
    } else {
      this.balanceContainer.nativeElement.style.webkitTransform = `translate3d(0, -65px, 0)`;
      this.balanceContainer.nativeElement.style.opacity = .95;
      this.balanceLabel.nativeElement.style.webkitTransform = `translate3d(0, 55px, 0)`;
      this.balanceValue.nativeElement.style.webkitTransform = `translate3d(0, 25px, 0)`;
      this.balanceChart.nativeElement.style.opacity = .5;
    }
  }


  addEntry() {
    this.navCtrl.push(NewEntryPage);
  }

}
