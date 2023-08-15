import 'package:carapp/Widgets/car_data/car_data1.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final CarData1 singleProduct;
  const ProductDetail({super.key, required this.singleProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.bookmark_add_outlined))
        ],
      ),
      body: Column(
        children: [Image.network(singleProduct.picture)],
      ),
    );
  }
}
