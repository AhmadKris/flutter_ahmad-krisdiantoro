# (25) Introduction REST API - JSON serialization/deserialization

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task 

1. GET
```dart 
void getData() async {
    final Response response = await dio.get(url);

    // print(response);

    if (response.data != null) {
      setState(() {
        service = json.encode(response.data['data']);
      });
    }
  }
```
2. POST 
```dart
void postData() async {
    final Response response = await dio.post(url, data: {
      'name': nameController.text,
      'job': jobController.text,
    });

    // print(response);

    if (response.data != null) {
      setState(() {
        service = json.encode(response.data);
      });
    }
  }
```
3. PUL
```dart
  void putData() async {
    final Response response = await dio.put('$url/4', data: {
      'name': nameController.text,
      'job': jobController.text,
    });

    // print(response);

    if (response.data != null) {
      setState(() {
        service = json.encode(response.data);
      });
    }
  }
```
4. DELETE
```dart
  void deleteData() async {
    final Response response = await dio.delete('$url/4');

    // print(response);

    if (response.data != null) {
      setState(() {
        service = json.encode(response.data);
      });
    }
  }
```
5. Objek/Variable
```dart
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  String service = "";

  final Dio dio = Dio();
  final url = 'https://reqres.in/api/users';
```

## Output
1. GET <br>
![out1](/25_Introduction%20REST%20API%20-%20JSON%20serializationdeserialization/screenshots/out1.png)
2. POST <br>
![out2](/25_Introduction%20REST%20API%20-%20JSON%20serializationdeserialization/screenshots/out2.png)
3. PUT <br>
![out3](/25_Introduction%20REST%20API%20-%20JSON%20serializationdeserialization/screenshots/out3.png)
4. DELETE <br>
![out4](/25_Introduction%20REST%20API%20-%20JSON%20serializationdeserialization/screenshots/out4.png)