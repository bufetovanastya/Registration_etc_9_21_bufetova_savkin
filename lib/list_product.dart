import 'package:flutter/material.dart';
import 'package:flutter_registration_and_listview/button_to_cart.dart';
class ListProduct extends StatelessWidget {
  final String name_product;
  final String photo_path;
  final String description_product;
  final double price_product;
  final int id_product;
 const ListProduct({Key? key, required this.name_product, required this.photo_path, required this.description_product, required this.price_product, required this.id_product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(16)
        )

      ),

      child: Column(
        children: <Widget>[
          Image.network('${photo_path}',
            fit: BoxFit.scaleDown,
          ),
          Text('${name_product}', style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          ToCartProduct(prod_name: name_product, photo_path: photo_path, description_product: description_product, prod_id: id_product, price_product: price_product)
        ],
      ),
    );
  }
}