import 'package:exampple3/model/product_model.dart';
import 'package:exampple3/service/product_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductModel> products = [];

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  void getProducts() async {
    final List<ProductModel> temporal = await ProductService().getProducts();
    setState(() {
      products = temporal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ListTile(title: Text(products[index].title)),
      ),
    );
  }
}
