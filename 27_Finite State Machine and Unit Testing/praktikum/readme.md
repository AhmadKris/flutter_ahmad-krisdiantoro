# (27) Finite State Machine & Unit Testing

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task

### Task 01 

1. MVVM <br>
![mvvm](/27_Finite%20State%20Machine%20and%20Unit%20Testing/screenshots/mvvm.png)

2. Model
```dart
class Food {
  int? id;
  String name;

  Food({this.id, required this.name});

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
```
3.  ViewModel API
```dart
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
```
4. ViewModel Provider
```dart
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
```
5. View
```dart
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final foods = Provider.of<FoodProvider>(context).items;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finite State'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://asset.kompas.com/crops/kL9Vik9MGd2Shkl40qtr8OyPVIw=/0x44:1000x544/750x500/data/photo/2018/08/13/2696522316.jpg"),
                ),
                Text(
                  foods[index].name,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            )),
          );
        },
        itemCount: foods.length,
      ),
    );
  }
}
```
6. Main 
```dart
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finite State',
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
```

### Output
![out](/27_Finite%20State%20Machine%20and%20Unit%20Testing/screenshots/output.png)

### Task 02
1. Membuat food_api_test.dart
```dart
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
```

2. Membuat file mock menggunakan flutter pub run build_runner build 
```dart
class MockFoodApi extends _i1.Mock implements _i2.FoodApi {
  MockFoodApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get url => (super.noSuchMethod(
        Invocation.getter(#url),
        returnValue: '',
      ) as String);
  @override
  _i3.Future<List<_i4.Food>> getAllFoods() => (super.noSuchMethod(
        Invocation.method(
          #getAllFoods,
          [],
        ),
        returnValue: _i3.Future<List<_i4.Food>>.value(<_i4.Food>[]),
      ) as _i3.Future<List<_i4.Food>>);
}
```
### Output test
![test](/27_Finite%20State%20Machine%20and%20Unit%20Testing/screenshots/test.png)