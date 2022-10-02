# Weekly 2

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

1.  Menerapkan state management dan MVVM arsitektur.  pada bagian ini saya masih binggung jadi susunan projeknya masih berantakan.<br>
![mvvm](/Weekly3/screenshot/out10.png)

2. Membuat fungsi pada contact us dan meletakan data pada file baru. 
    - Fungsi tombol submit
    ```dart
    Container(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(
                    "Notifikasi",
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Nama : ${nameController.text}"),
                      Text("Email : ${emailController.text}"),
                      Text("Pesan : ${messageController.text}"),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        final items = TaskModel(
                          id: const Uuid().v4(),
                          name: nameController.text,
                          email: emailController.text,
                          message: messageController.text,
                        );
                        final manager = Provider.of<TaskManager>(
                            context,
                            listen: false);
                        manager.addMessage(items);
                        clear();
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
           }
          },
        child: const Text("Submit"),
        ),
    ),
    ```
    - Pesan yang sudah di submit bisa dilihat di sini 
    ```dart 
    Widget build(BuildContext context) {
    final items = manager.taskModels;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemBuilder: ((context, index) {
          final item = items[index];
          return DataPesanCard(
            key: Key(item.id),
            item: item,
            onPressed: () {},
          );
        }),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemCount: items.length,
      ),
    );
    }
    ```
    - Fungsi untuk menghapus pesan 
    ```dart
    onPressed: () {
      manager.deleteMessage(index);
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.grey,
          content: Text('Pesan Dari ${item.name} Berhasil Dihapus.'),
          duration: const Duration(seconds: 3),
        ),
      );
    },
    ```
    - class TaskManager
    ```dart
    class TaskManager extends ChangeNotifier {
    final _taskModels = <TaskModel>[];
    List<TaskModel> get taskModels => List.unmodifiable(_taskModels);
        void deleteMessage(int index) {
            _taskModels.removeAt(index);
            notifyListeners();
        }

        void addMessage(TaskModel message) {
            _taskModels.add(message);
            notifyListeners();
        }
    }
    ```
## Output
![out1](/Weekly3/screenshot/out1.jpg)
![out2](/Weekly3/screenshot/out2.jpg)
![out3](/Weekly3/screenshot/out3.jpg)
![out4](/Weekly3/screenshot/out4.jpg)
![out5](/Weekly3/screenshot/out5.jpg)
![out6](/Weekly3/screenshot/out6.jpg)
![out7](/Weekly3/screenshot/out7.jpg)
![out8](/Weekly3/screenshot/out8.jpg)
![out9](/Weekly3/screenshot/out9.jpg)
    

              
