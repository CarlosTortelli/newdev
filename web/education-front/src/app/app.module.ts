import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { CoursesComponent } from './pages/courses/courses.component';
import { LessonComponent } from './components/lesson/lesson.component';
import { HeaderComponent } from './components/header/header.component';
import { LogoComponent } from './components/logo/logo.component';
import { SidebarComponent } from './components/sidebar/sidebar.component';
import { RoomComponent } from './components/room/room.component';
import { VimeModule } from '@vime/angular';

@NgModule({
  declarations: [
    AppComponent,
    CoursesComponent,
    LessonComponent,
    HeaderComponent,
    LogoComponent,
    SidebarComponent,
    RoomComponent
  ],
  imports: [
    BrowserModule,
    VimeModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
