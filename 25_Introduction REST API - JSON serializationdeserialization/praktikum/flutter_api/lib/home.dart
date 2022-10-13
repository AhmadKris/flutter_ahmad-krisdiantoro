import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  String service = "";

  final Dio dio = Dio();
  final url = 'https://reqres.in/api/users';

  void getData() async {
    final Response response = await dio.get(url);

    // print(response);

    if (response.data != null) {
      setState(() {
        service = json.encode(response.data['data']);
      });
    }
  }

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

  void deleteData() async {
    final Response response = await dio.delete('$url/4');

    // print(response);

    if (response.data != null) {
      setState(() {
        service = json.encode(response.data);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter API'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    label: Text('Name'),
                  ),
                ),
                TextFormField(
                  controller: jobController,
                  decoration: const InputDecoration(
                    label: Text('Job'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: getData,
                      child: const Text('GET'),
                    ),
                    ElevatedButton(
                      onPressed: postData,
                      child: const Text('POST'),
                    ),
                    ElevatedButton(
                      onPressed: putData,
                      child: const Text('PUT'),
                    ),
                    ElevatedButton(
                      onPressed: deleteData,
                      child: const Text('DELETE'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Result',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(service),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
