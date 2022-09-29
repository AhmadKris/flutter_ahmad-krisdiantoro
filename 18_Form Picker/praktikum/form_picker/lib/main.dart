import 'package:flutter/material.dart';
import 'package:form_picker/create_post.dart';

import 'package:form_picker/preview_post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      initialRoute: CreatePost.routName,
      routes: {
        CreatePost.routName: (context) => const CreatePost(),
        PreviewPost.routeName: (context) => const PreviewPost(),
      },
    );
  }
}
