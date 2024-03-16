import 'package:flutter/material.dart';
class CartProduct extends StatelessWidget {
  const CartProduct({Key? key, required this.name_product1, required this.photo_path1, required this.description_product1, required this.id_product1, required this.price_product1}) : super(key: key);
  final String name_product1;
  final String photo_path1;
  final String description_product1;
  final double price_product1;
  final int id_product1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name_product1,
            style: TextStyle(fontSize: 20, color: Colors.green[900]),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8) ,
          children: <Widget>[
            Container(
              child: Image.network(photo_path1),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
                child: Text('Артикул: ${id_product1.toString()}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Text('Полное название: ${name_product1}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Text('Описание товара: ${description_product1}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Text('Цена товара: ${price_product1.toString()}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
          ],

        )
    );
  }
}