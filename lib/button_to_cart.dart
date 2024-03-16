import 'package:flutter/material.dart';
import 'package:flutter_registration_and_listview/cart_product.dart';
class ToCartProduct extends StatelessWidget {
  const ToCartProduct ({Key? key, required this.prod_name, required this.photo_path, required this.description_product, required this.price_product, required this.prod_id}) : super(key: key);
  final String prod_name;
  final String photo_path;
  final String description_product;
  final double price_product;
  final int prod_id;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('${prod_name}'),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CartProduct(name_product1: prod_name, photo_path1: photo_path, description_product1: description_product, id_product1: prod_id, price_product1: price_product)));
      },
    );
  }
}