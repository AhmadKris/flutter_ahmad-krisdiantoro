import 'dart:io';
import 'package:flutter/material.dart';
import 'package:form_picker/create_post.dart';

class PreviewPost extends StatelessWidget {
  final File fileToDisplay;
  const PreviewPost({required this.fileToDisplay, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Post'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Image.file(fileToDisplay),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text("Published : "),
                        Text(dateInputController.text),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Color : "),
                        SizedBox(
                          height: 20,
                          child: CircleAvatar(
                            backgroundColor: currentColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  captionInputController.text,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
