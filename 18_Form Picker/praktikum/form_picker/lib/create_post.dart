import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:form_picker/preview_post.dart';
import 'package:intl/intl.dart';
// import 'package:open_file/open_file.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:form_picker/model.dart';

class CreatePost extends StatefulWidget {
  static const routName = '/create';

  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final formKey = GlobalKey<FormState>();
  var data = {'lok': '', 'tgl': '', 'wrna': '', 'isi': ''};

  // late Function(Model) tambah;

  void _onSubmit() {
    formKey.currentState!.save();
    print(data);
    final posting = Model(
      lokasi: data['lok']!,
      tanggal: data['tgl']!,
      warna: data['wrna']!,
      isiKonten: data['isi']!,
    );
    // tambah(posting);
  }

  FilePickerResult? result;
  PlatformFile? pickedFile;
  bool isLoading = false;
  File? fileTODisplay;

  DateTime dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color currentColor = Colors.grey;
  TextEditingController dateInputController = TextEditingController();
  // TextEditingController colorInputController = TextEditingController();

  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );
      if (result != null) {
        pickedFile = result!.files.first;
        fileTODisplay = File(pickedFile!.path.toString());
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // tambah = ModalRoute.of(context)!.settings.arguments as Function(Model);
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
                    Container(
                      decoration: BoxDecoration(
                          color: currentColor,
                          borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      child: TextFormField(
                        focusNode: FocusNode(canRequestFocus: false),
                        textAlign: TextAlign.center,
                        onTap: () {
                          pickFile();
                        },
                        onSaved: (newValue) {
                          newValue = fileTODisplay.toString();
                          data['lok'] = newValue;
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: 'Open File',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    // const Text(
                    //   'Cover',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 50,
                    //   child: MaterialButton(
                    //     color: Colors.grey,
                    //     onPressed: () {
                    //       pickFile();
                    //     },
                    //     child: const Text(
                    //       'Open File',
                    //       style: TextStyle(fontSize: 18),
                    //     ),
                    //   ),
                    // ),
                    if (pickedFile != null)
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          height: 300,
                          child: Image.file(fileTODisplay!),
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
                        onSaved: (newValue) {
                          if (newValue != null) data['tgl'] = newValue;
                        },
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
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: 'Pick a color',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSaved: (newValue) {
                          if (newValue != null)
                            newValue = currentColor.toString();
                          data['wrna'] = newValue!;
                        },
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
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null) {
                          return 'Kudu isi';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        if (newValue != null) data['isi'] = newValue;
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: MaterialButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      if (formKey.currentState != null &&
                          formKey.currentState!.validate()) {
                        _onSubmit();
                        Navigator.of(context).pushNamed(
                          PreviewPost.routeName,
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
