import 'package:dio/dio.dart';
import 'package:exampple3/const/dragon_const.dart';
import 'package:exampple3/model/dragon_model.dart';

class DragonService {
  final _dio = Dio();

  Future<List<DragonModel>> getProduct() async {
    final response = await _dio.get(dragonConst);
    if (response.statusCode == 200) {
      final data = response.data;
      return data.map((e)=> DragonModel.fromJson(e) );
    }
    return [];
  }
}
