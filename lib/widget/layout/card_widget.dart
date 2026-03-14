import 'package:exampple3/config/router/router.dart';
import 'package:exampple3/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardWidget extends StatelessWidget {
  final ProductModel product;
  const CardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
          child: FadeInImage.assetNetwork(
            placeholder: 'img/loading.gif', image: product.images.first,
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
            imageErrorBuilder: (context, error, stackTrace){
              return const SizedBox(
                height: 250,
                child: Center(child: Icon(Icons.no_photography)),
              );
            },
          ),
        ),
        Padding(padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(product.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            const SizedBox(height: 16),
            Text("${product.price}"),
          ],
          ),
        ),
        
        SizedBox(
          height: 32,
          width: double.infinity,
          child: FilledButton(onPressed: (){
            router.pop();
          }, child:Text("regresar")),
        )
      ],
    ),);
  }
}