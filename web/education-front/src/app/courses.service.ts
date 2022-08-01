import { Injectable } from '@angular/core';

export type LessonType = {
  title: string
  videoId: string
  description: string
}

export type CourseResponseType = {
  title: string
  description: string
  lessons: LessonType[]
}

@Injectable({
  providedIn: 'root'
})


export class CoursesService {

  constructor() { 



  }

async getCoursesById(id: number) {



  const response = await
  fetch('http://localhost:4000/courses/2')
  const data = await response.json()
  console.log(response)

}

}


