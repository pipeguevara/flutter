import 'package:dio/dio.dart';
import 'package:exampple3/const/product_const.dart';
import 'package:exampple3/model/product_model.dart';

class ProductService {
  final _dio = Dio();

  Future<List<ProductModel>> getProducts() async {
    final response = await _dio.get(productConst);
    if (response.statusCode == 200) {
      final data = response.data;
      return (data as List).map((e)=> ProductModel.fromJson(e)).toList();
    }
    return [];
  }
}
