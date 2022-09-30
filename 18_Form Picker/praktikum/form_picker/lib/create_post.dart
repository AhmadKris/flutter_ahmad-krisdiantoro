import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:form_picker/preview_post.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

void pickFile() async {
  final result = await FilePicker.platform.pickFiles();
  if (result == null) return;

  final file = result.files.first;
  openFile(file);
}

void openFile(PlatformFile file) {
  OpenFile.open(file.path);
}

DateTime dueDate = DateTime.now();
final currentDate = DateTime.now();

Color currentColor = Colors.grey;

TextEditingController dateInputController = TextEditingController();
TextEditingController colorInputController = TextEditingController();
TextEditingController captionInputController = TextEditingController();

class _CreatePostState extends State<CreatePost> {
  final formKey = GlobalKey<FormState>();
  File? fileToDisplay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Cover',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: MaterialButton(
                        color: currentColor,
                        onPressed: () async {
                          final file = await FilePicker.platform.pickFiles();
                          if (file == null) return;
                          setState(() {
                            fileToDisplay =
                                File(file.files.first.path.toString());
                          });
                        },
                        child: const Text(
                          'Open File',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    if (fileToDisplay != null)
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          height: 300,
                          child: Image.file(fileToDisplay!),
                        ),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Publish At',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        focusNode: FocusNode(
                          canRequestFocus: false,
                        ),
                        controller: dateInputController,
                        readOnly: true,
                        onTap: () async {
                          final selectDate = await showDatePicker(
                            context: context,
                            initialDate: currentDate,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(currentDate.year + 5),
                          );
                          if (selectDate != null) {
                            String formatDate =
                                DateFormat('dd MMMM yyyy').format(selectDate);
                            dueDate = selectDate;
                            setState(() {
                              dateInputController.text = formatDate;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'dd/mm/yyyy',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Color Theme',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          child: CircleAvatar(
                            backgroundColor: currentColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        readOnly: true,
                        controller: colorInputController,
                        focusNode: FocusNode(canRequestFocus: false),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: const Text('Pilih Warna'),
                                    content: SingleChildScrollView(
                                      child: BlockPicker(
                                        pickerColor: currentColor,
                                        onColorChanged: (Color color) {
                                          setState(() {
                                            currentColor = color;
                                            colorInputController.text =
                                                currentColor.toString();
                                          });
                                        },
                                      ),
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        child: const Text('DONE'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ]);
                              });
                        },
                        decoration: InputDecoration(
                          hintText: 'Pick a color',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Caption',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      controller: captionInputController,
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Isi dulu lah bro...";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: MaterialButton(
                    color: currentColor,
                    onPressed: () {
                      if (fileToDisplay != null &&
                          formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PreviewPost(fileToDisplay: fileToDisplay!),
                          ),
                        );
                      }
                    },
                    child: const Text('Simpan'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
