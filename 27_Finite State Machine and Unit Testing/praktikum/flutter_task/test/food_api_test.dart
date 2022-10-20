import 'package:flutter_task/models/food.dart';
import 'package:flutter_task/view_models/api/food_api.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'food_api_test.mocks.dart';

@GenerateMocks([FoodApi])
void main() {
  group('FoodApi', () {
    FoodApi foodApi = MockFoodApi();

    test('get all foods returns data', () async {
      when(foodApi.getAllFoods()).thenAnswer(
        (_) async => <Food>[
          Food(id: 1, name: 'Bakso'),
        ],
      );
      var foods = await foodApi.getAllFoods();
      expect(foods.isNotEmpty, true);
    });
  });
}
