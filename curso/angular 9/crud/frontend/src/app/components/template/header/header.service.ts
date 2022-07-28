import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import { HeaderData } from '../footer/header-data.model';

@Injectable({
  providedIn: 'root'
})
export class HeaderService {

  private headerData = new BehaviorSubject<HeaderData>({
    title: 'Início',
    icon: 'home',
    routerUrl: ''
  })

  constructor() { }
}
