import 'package:flutter/material.dart';
// import 'package:form_picker/model.dart';
// import './create_post.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:open_file/open_file.dart';

class PreviewPost extends StatefulWidget {
  static const routeName = '/create/preview';
  const PreviewPost({super.key});

  @override
  State<PreviewPost> createState() => _PreviewPostState();
}

class _PreviewPostState extends State<PreviewPost> {
  // List<Model> data = [];

  // void tambah(Model model) {
  //   setState(() {
  //     data.add(model);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Post'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          // child: ListView.builder(
          //   itemBuilder: (context, index) {
          //     // print(data);
          //     return ListTile();
          // },
          // ),
          ),
    );
  }
}
