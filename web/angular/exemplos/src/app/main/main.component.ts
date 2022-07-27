import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {
  @Input () name: string = 'jAAAA'
  @Input () bio: string = 'jose era um homem bagual'
  @Input () link1: string = ''
  @Input () link2: string = 'jojo,  pedro'



  constructor() { }

  ngOnInit(): void {
  }

}
