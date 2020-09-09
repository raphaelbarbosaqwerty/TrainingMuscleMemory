import { Component, Input } from '@angular/core';

@Component({
  selector: 'balance-label',
  templateUrl: 'balance-label.html'
})
export class BalanceLabelComponent {
  @Input() currentBalance;

  constructor() { 
    alert("Role a tela para mais detalhes");
  }

}
