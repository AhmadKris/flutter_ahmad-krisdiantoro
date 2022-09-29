# (18) Form Picker 

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task 

### Task 01

Fungsi PickFile 
```dart
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
```
Fungsi Date Picker
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
Fungsi Color Picker
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
Menampilkan lingkaran kecil dengan warna yang dipilih
```dart
SizedBox(
  height: 10,
  child: CircleAvatar(
     backgroundColor: currentColor,
  ),
),
```
Form Caption
```dart
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
```
Tobol Simpan
```dart
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
```

### Task 02 
Masih Halaman Kosong.

### Output
![out1](/18_Form%20Picker/screenshots/out1.png)<br>
![out2](/18_Form%20Picker/screenshots/out2.png)<br>
![out3](/18_Form%20Picker/screenshots/out3.png)<br>
![out4](/18_Form%20Picker/screenshots/out4.png)