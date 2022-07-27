import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.css']
})
export class CardComponent implements OnInit {
  @Input () nameParam: string[] = [];
  @Input () bioParam: string = ''
  @Input () link1Param: string = '';
  @Input () link2Param: string = '';
  @Input () subtitleParam: string = '';
  

  color: string = '#000'

  showFruit: boolean = true

  addNameList: any

  remove: any
  
  list: string[] = []

  constructor() { 
    this.addNameList = () => {
      this.list.push('bruno')
      console.log('adicionando na lita bagua', this.list)
    }
    this.remove = (index: number) => {
      console.log('->', index)
      this.list.splice(index, 1)
    }
  }

  ngOnInit(): void {
  }

}