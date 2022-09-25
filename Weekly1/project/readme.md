# Weekly 1

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

##Penjelasan Code 
1. Membuat appBar
```dart:
appBar: AppBar(
          title: const Text('Aplikasi Weekly'),
          centerTitle: true,
        ),
```
2. Menampilkan Gambar
```dart:
Image.asset(
            "assets/images/img1.png",
            width: double.infinity,
            height: 400,
            fit: BoxFit.fill,
        ),
```
3. Menampilkan Teks Dengan Style
```dart:
TextSpan(
        text:'teks',
        style: GoogleFonts.robotoCondensed(fontSize: 18),
    ),
```
4. Membuat Teks Field Dengan Validator
```dart:
Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
            controller: firstNameController,
            decoration: const InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Nama Depan'),
        ),
        validator: (value) {
            if (value!.isEmpty) {
                return 'Nama Depan tidak boleh kosong';
                }
                return null;
                },
            ),
        ),
```
5. Membuat Tombol Submit
```dart:
Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
            onPressed: () {
            firstNameController.text;
                if (_formKey.currentState!.validate()) {
                    _showDialog(context);
                    }
                },
            child: const Text("Submit"),
            ),
        ),
```
6. Mnampilkan Alert Tapi Masih Belum Berhasil Mengambil Data dari TeksField
```dart:
void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Alert!!"),
        content: const Text('Masih gagal'),
        actions: <Widget>[
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
```
## Output
![out1](/Weekly1/screenshot/output1.jpg)
![out1](/Weekly1/screenshot/output2.jpg)
![out1](/Weekly1/screenshot/output3.jpg)