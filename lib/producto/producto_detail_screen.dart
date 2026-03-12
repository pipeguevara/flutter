import 'package:exampple3/service/product_service.dart';
import 'package:flutter/material.dart';

class ProductoDetailScreen extends StatefulWidget {
  final int id;
  const ProductoDetailScreen({super.key, required this.id});

  @override
  State<ProductoDetailScreen> createState() => _ProductoDetailScreenState();
}

class _ProductoDetailScreenState extends State<ProductoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("detail")),
      body: FutureBuilder(
        future: ProductService().getProductounico(widget.id),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("No disponible"));
          } else if (snapshot.hasData) {
            final data = snapshot.data;
            if (data == null) {
              return Text("no hay datos");
            }
            return Text(data.title);
          } else {
            return Text("no hay data");
          }
        },
      ),
    );
  }
}
