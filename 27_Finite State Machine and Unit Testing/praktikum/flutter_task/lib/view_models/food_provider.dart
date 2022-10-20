import 'package:flutter/foundation.dart';
import 'package:flutter_task/models/food.dart';
import 'package:flutter_task/view_models/api/food_api.dart';

class FoodProvider with ChangeNotifier {
  late FoodApi _foodApi;
  List<Food> _items = [];

  FoodProvider() {
    _foodApi = FoodApi();
    _fetchDataFoods();
  }

  void _fetchDataFoods() async {
    _items = await _foodApi.getAllFoods();
  }

  List<Food> get items => [..._items];
}
