import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-card-example',
  templateUrl: './card-example.component.html',
  styleUrls: ['./card-example.component.css']
})
export class CardExampleComponent implements OnInit {
  fullName: string = 'bruno'
  bio: string = 'ASDJASDAJKD ASDKAK ASKASD KASK ASKAS ASKAS K'
  students: string[] = ['banana, ana, mamae']



  constructor() { }

  ngOnInit(): void {
  }

}
