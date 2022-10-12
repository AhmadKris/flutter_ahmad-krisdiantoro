# (24) Storage

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task

### Task 01 
1. class model 
```dart
class Account {
  String nama, nomor, email, password;

  Account(
      {required this.nama,
      required this.nomor,
      required this.email,
      required this.password});

  Account.fromMap(Map map)
      : nama = map['nama'] as String,
        nomor = map['nomor'] as String,
        email = map['email'] as String,
        password = map['password'] as String;

  Map toMap() {
    return {
      'nama': nama,
      'nomor': nomor,
      'email': email,
      'password': password,
    };
  }
}
```
2. provider 
```dart
class AccountProvider with ChangeNotifier {
  List<Account> _accounts = [];

  SharedPreferences? sharedPreferences;

  List<Account> get accounts => List.unmodifiable(_accounts);

  void addAccount(Account account) {
    _accounts.add(account);
    savedDataToLocalStorage();
    notifyListeners();
  }

  void initSharedPreference() async {
    await SharedPreferencesHelper.init();
    sharedPreferences = SharedPreferencesHelper.instance;
    loadDataFromLocalStorage();
    notifyListeners();
  }

  void savedDataToLocalStorage() {
    List<String>? spList =
        _accounts.map((item) => json.encode(item.toMap())).toList();
    sharedPreferences!.setStringList('list', spList);
  }

  void loadDataFromLocalStorage() {
    List<String>? spList = sharedPreferences!.getStringList('list');
    if (spList != null) {
      _accounts =
          spList.map((item) => Account.fromMap(json.decode(item))).toList();
    }
  }
}
```
3. fungsi pada tombol 
```dart
onPressed: () {
  if (formKey.currentState!.validate()) {
    Account akun = Account(
        nama: _namaController.text,
        nomor: _nomorController.text,
        email: _emailController.text,
        password: _passwordController.text);
    Provider.of<AccountProvider>(context, listen: false)
        .addAccount(akun);
    loginData.setBool('user', false);
    
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
        (route) => false);
  }
}
```
4. initState
```dart
  @override
  void initState() {
    super.initState();
    checkLogin();
    Provider.of<AccountProvider>(context, listen: false).initSharedPreference();
  }
```
5. Menampilkan nama dan email di Home Page
```dart
final dataAccount = Provider.of<AccountProvider>(context).accounts;
Text(dataAccount.elementAt(0).nama.toString()),
Text(dataAccount.elementAt(0).email.toString()),
```
6. Logout
```dart
onPressed: () {
  loginData.setBool('user', true);
  loginData.remove('name');
  loginData.remove('mail');
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const Register(),
      ),
      (route) => false);
},
```
### Output Task 01
![task01](/24_Storage/screenshots/task01.gif)

### Task 02
1. Halaman Register, membuat tombol Register dan 4 kolom untuk nama, email, nomor telepon, dan password.
```dart
TextFormField(
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.name,
    controller: _namaController,
    decoration: const InputDecoration(
        icon: Icon(Icons.person),
        label: Text('Nama'),
        hintText: 'Ahmad Krisdiantoro'),
    validator: (value) {
      if (value == null || value.length < 5) {
        return 'Silahkan masukkan nama anda';
      }
      return null;
    },
  ),
  TextFormField(
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.number,
    controller: _nomorController,
    decoration: const InputDecoration(
        icon: Icon(Icons.phone),
        label: Text('Nomor'),
        hintText: '081234567890'),
    validator: (value) {
      if (value == null || value.length < 10) {
        return 'Silahkan masukkan nomor yang valid';
      }
      return null;
    },
  ),
  TextFormField(
    textInputAction: TextInputAction.next,
    keyboardType: TextInputType.emailAddress,
    controller: _emailController,
    decoration: const InputDecoration(
        icon: Icon(Icons.mail),
        label: Text('Email'),
        hintText: 'Example@gmail.com'),
    validator: (value) {
      if (value == null || value.length < 10) {
        return 'Silahkan masukkan email yang valid';
      }
      return null;
    },
  ),
  TextFormField(
    textInputAction: TextInputAction.done,
    obscureText: true,
    controller: _passwordController,
    decoration: const InputDecoration(
        icon: Icon(Icons.password),
        label: Text('Password'),
        hintText: '*********'),
    validator: (value) {
      if (value == null || value.length < 8) {
        return 'Silahkan masukka password minimal 8 karakter';
      }
      return null;
    },
  ),
  const SizedBox(
    height: 50,
  ),
  ElevatedButton(
    onPressed: () {
      if (formKey.currentState!.validate()) {
        String name = _namaController.text;
        String mail = _emailController.text;
        loginData.setBool('user', false);
        loginData.setString('name', name);
        loginData.setString('mail', mail);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false);
      }
    },
    child: const Text('Register'),
  ),
```
2. Saat menekan tombol Register, simpan data email (String), nama (String) dan isLogin (boolean/bool) ke dalam shared preference dan navigasi ke halaman Home.
```dart
ElevatedButton(
    onPressed: () {
      if (formKey.currentState!.validate()) {
        String name = _namaController.text;
        String mail = _emailController.text;
        loginData.setBool('user', false);
        loginData.setString('name', name);
        loginData.setString('mail', mail);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false);
      }
    },
    child: const Text('Register'),
  ),
```
3. Pada halaman Home, buat teks untuk menampilkan nama dan email & buat tombol log out.
```dart
Text(name),
  const SizedBox(
    height: 20,
  ),
  Text(mail),
  const SizedBox(
    height: 20,
  ),
  ElevatedButton(
    onPressed: () {
      loginData.setBool('user', true);
      loginData.remove('name');
      loginData.remove('mail');
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Register(),
          ),
          (route) => false);
    },
```
4. Saat menekan tombol log out, hapus semua isi di shared preference & navigasi ke halaman Register. 
```dart
ElevatedButton(
    onPressed: () {
      loginData.setBool('user', true);
      loginData.remove('name');
      loginData.remove('mail');
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Register(),
          ),
          (route) => false);
    },
```
5. Gunakan state management bloc untuk menampilkan nama dan email di halaman Home. (Belum Selesai) 

### Output Task 02
![task2](/24_Storage/screenshots/task02_1.png)
![task2_1](/24_Storage/screenshots/task02_2.png)


