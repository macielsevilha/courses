import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-product-delete',
  templateUrl: './product-delete.component.html',
  styleUrls: ['./product-delete.component.css']
})
export class ProductDeleteComponent implements OnInit {
  
  constructor() { }

  ngOnInit(): void {
  }
  //updateDelete(): void {
   // this.productService.delete(this.product).subscribe(() => {
     // this.productService.showMessage('Produto Excluido com sucesso!')
   //// })
 // }

}
