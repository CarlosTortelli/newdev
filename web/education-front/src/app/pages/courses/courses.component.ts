import { Component, OnInit } from '@angular/core';
import { CoursesService } from 'src/app/courses.service';


@Component({
  selector: 'app-courses',
  templateUrl: './courses.component.html',
  styleUrls: ['./courses.component.css']
})
export class CoursesComponent implements OnInit {
  coursesService: CoursesService
  
  constructor(coursesService: CoursesService) {
    this.coursesService = coursesService
   }



  ngOnInit(): void {
   this.coursesService.getCoursesById(2)

  }


}
