import 'package:dio/dio.dart';
import 'package:flutter_task/models/food.dart';

class FoodApi {
  late Dio _dio;
  final url =
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods';

  FoodApi() {
    _dio = Dio();
  }

  Future<List<Food>> getAllFoods() async {
    final response = await _dio.get(url);
    print(response);
    if (response.data != null) {
      return List<Food>.from(
          response.data.map((food) => Food.fromJson(food)).toList());
    }
    return [];
  }
}
