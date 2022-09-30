# (18) Form Picker 

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task 

### Task 01

Membuat fungsi file picker, dimana akan di ambil path dan di simpan dalam variavle fileToDisplay.
```dart
SizedBox(
  height: 50,
  child: MaterialButton(
  color: currentColor,
    onPressed: () async {
      final file = await FilePicker.platform.pickFiles();
        if (file == null) return;
          setState(() {
            fileToDisplay = File(file.files.first.path.toString());
            });
          },
    child: const Text(
        'Open File',
        style: TextStyle(fontSize: 18),
        ),
    ),
),
```
Fungsi DatePicker.
```dart
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
```
Fungsi ColorPicker.
```dart
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
```
Fungsi untuk caption.
```dart 
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
```
Fungsi tombol simpan.
```dart
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
```
### Task 02 
Fungsi untuk menampilkan gambar.
```dart
Image.file(fileToDisplay),
```
Fungsi untuk menampilkan tanggal dan warna.
```dart
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
```
Fungsi untuk menampilkan text caption.
```dart
Text(
  captionInputController.text,
  textAlign: TextAlign.justify,
),
```

### Output
![out1](/18_Form%20Picker/screenshots/out1.png)<br>
![out2](/18_Form%20Picker/screenshots/out2.png)<br>
![out3](/18_Form%20Picker/screenshots/out3.png)<br>
