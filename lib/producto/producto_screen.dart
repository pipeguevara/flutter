import 'package:exampple3/config/router/router.dart';
import 'package:exampple3/model/product_model.dart';
import 'package:exampple3/service/product_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductoScreen extends StatelessWidget {
  const ProductoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ProductService().getProducts(),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("No disponible"));
        } else if (snapshot.hasData) {
          final List<ProductModel> data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => {
                  router.push('/producto/${data[index].id}')
                },
                title: Text(data[index].title),
                subtitle: Text(data[index].description),
              );
            },
          );
        } else {
          return Text("Data no found");
        }
      },
    );
  }
}
