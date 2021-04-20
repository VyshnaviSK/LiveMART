import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';
import 'component/body.dart';
import 'component/custom_app_bar.dart';

class ProductScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Product prod  = new Product(
      id: 2,
      images: [
        "assets/images/Image Popular Product 2.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Nike Sport White - Man Pant",
      price: 50.5,
      description: description,
      rating: 4.1,
      isPopular: true,
    );

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: prod.rating),
      body: Body(product: prod),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
