# Tugas Praktikum 

## Praktikum 1 : Mengunduh Data dari Web Service (API)
### Soal 1 
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo - Faradilla',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future - Faradilla'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              child: Text('GO!'),
              onPressed: () {},
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
```

### Soal 2 
Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books. <br>
  - Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
  ![Hasil](images/Soal2.png)
  - Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2". 
  ![Hasil](images/Soal2-2.png)

### Soal 3 
Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError! <br>
  **Jawab :** <br>
  **- subString :** Metode substring(0, 450) mengambil sebagian dari string value.body yang diperoleh dari respons getData(), dimulai dari indeks 0 hingga 450. Artinya, jika value.body memiliki lebih dari 450 karakter, hanya 450 karakter pertama yang akan disimpan ke dalam result. Ini bertujuan untuk membatasi jumlah teks yang ditampilkan, mungkin untuk mencegah terlalu banyak data muncul di layar sekaligus. <br>
  **- catchError :** Metode catchError((_) {...}) berfungsi menangani kemungkinan error saat getData() dijalankan, seperti koneksi yang gagal atau respons server yang error. Jika terjadi kesalahan, blok ini akan mengganti nilai result dengan teks “An error occurred” untuk menunjukkan bahwa ada kendala saat mengambil data. Dengan menangani error, aplikasi tetap bisa berjalan tanpa crash meskipun terjadi kegagalan dalam proses pengambilan data.
  ![Hasil](images/Soal3.png)

## Praktikum 2: Menggunakan await/async untuk menghindari callbacks
### Soal 4 
Jelaskan maksud kode langkah 1 dan 2 tersebut! <br>
  **Jawab :** <br>
  - Langkah 1 mendefinisikan tiga fungsi asinkron, yaitu returnOneAsync, returnTwoAsync, dan returnThreeAsync. Masing-masing fungsi mengembalikan nilai integer setelah menunggu selama 3 detik. Fungsi-fungsi ini menggunakan Future.delayed, yang menyebabkan penundaan dalam durasi yang ditentukan sebelum mengembalikan nilai. returnOneAsync mengembalikan nilai 1, returnTwoAsync mengembalikan nilai 2, dan returnThreeAsync mengembalikan nilai 3. Semua fungsi menggunakan await untuk memastikan bahwa eksekusi menunggu hingga penundaan selesai sebelum nilai dikembalikan. <br>
  - Langkah 2 mendefinisikan count untuk menjalankan proses menghitung total dari tiga nilai yang dihasilkan oleh fungsi asinkron returnOneAsync, returnTwoAsync, dan returnThreeAsync. Pertama, variabel total di-set ke 0. Lalu, total diisi sama hasil dari returnOneAsync menggunakan await, jadi program akan menunggu sampai prosesnya selesai. Selanjutnya, total ditambah lagi dengan hasil dari returnTwoAsync dan returnThreeAsync, yang juga menggunakan await. Setelah semua fungsi selesai, setState dipanggil untuk update nilai result dengan total yang udah dikonversi jadi string.
  ![Hasil](images/Soal4.png)

## Praktikum 3: Menggunakan Competer di Future 
### Soal 5 
Jelaskan maksud kode langkah 2 tersebut! <br>
  **Jawab :** Kode program tersebut menggunakan objek Completer untuk mengatur pengembalian hasil secara manual dalam fungsi getNumber. Di dalam getNumber, completer diinisialisasi sebagai Completer<int> dan memanggil fungsi calculate. Fungsi calculate menjalankan penundaan selama 5 detik menggunakan Future.delayed, lalu menyelesaikan (complete) completer dengan nilai 42. Nilai ini nantinya akan dikembalikan sebagai hasil dari getNumber melalui completer.future setelah proses calculate selesai.
  ![Hasil](images/Soal5.png)

### Soal 6 
Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut! <br>
  **Jawab :** <br>
  - Langkah 5 fungsi calculate2 yang menggunakan try-catch untuk menangani kemungkinan kesalahan saat menjalankan operasi asinkron. Dalam blok try, fungsi menunggu (await) selama 5 detik menggunakan Future.delayed, lalu menyelesaikan (complete) completer dengan nilai 42. Jika terjadi kesalahan selama penundaan atau saat menyelesaikan completer, blok catch akan menangani error tersebut dan menyelesaikan completer dengan nilai kosong ({}). <br>
  - Langkah 6 memanggil fungsi getNumber() dan menangani hasilnya menggunakan then dan catchError. Ketika getNumber() selesai dan menghasilkan value, blok then akan dijalankan, yang memanggil setState untuk memperbarui result dengan nilai value dalam bentuk string agar bisa ditampilkan di UI. Jika ada error selama proses getNumber(), blok catchError akan menangani error tersebut dengan mengatur result menjadi teks 'An error occurred'.
  ![Hasil](images/Soal6.png)

## Praktikum 4: Memanggil Future secara paralel
### Soal 7 
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 7".
  ![Hasil](images/Soal7.png)

### Soal 8 
Jelaskan maksud perbedaan kode langkah 1 dan 4! <br>
  **Jawab :** <br>
  - Langkah 1 menggunakan FutureGroup, yang memungkinkan Anda untuk menambahkan beberapa Future ke dalam grup dan menunggu semua Future selesai dengan menggunakan futureGroup.future. Fungsi close() digunakan untuk menandakan bahwa tidak ada lagi Future yang akan ditambahkan ke grup. Setelah itu, then dipanggil untuk menangani hasil dari semua Future setelah selesai, yang akan berisi list nilai integer (value) yang bisa diproses lebih lanjut. <br>
  - Langkah 2 menggunakan Future.wait(), yang juga memungkinkan Anda untuk menunggu beberapa Future secara bersamaan. Future.wait() menerima list dari beberapa Future dan mengembalikan sebuah Future yang akan menyelesaikan setelah semua Future dalam list tersebut selesai. Hasil dari semua Future dikembalikan dalam bentuk list yang bisa langsung diproses di dalam then.
  ![Hasil](images/Soal8.png)

## Praktikum 5: Menangani Respon Error pada Async Code
### Soal 9 
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 9".
  ![Hasil](images/Soal9.png)

### Soal 10 
Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4! <br>
  **Jawab :** <br>
  - Jika Anda memanggil handleError() di dalam ElevatedButton dan menjalankan aplikasi, hasil yang ditampilkan pada result adalah pesan error yang dihasilkan oleh fungsi returnError(), yang berupa "Exception: Something terrible happened", karena handleError() menangani error yang dilempar oleh returnError(). <br>
  - Langkah 1, fungsi returnError() hanya mengembalikan Future yang ditunda selama 2 detik dan kemudian melemparkan exception menggunakan throw Exception. Jika Anda memanggil returnError() secara langsung, exception tersebut akan tidak tertangani, yang dapat menyebabkan aplikasi berhenti atau gagal jika tidak ada mekanisme penanganan error. <br>
  - Langkah 4, fungsi handleError() menangani exception yang dilempar oleh returnError() menggunakan blok try-catch. Ketika exception terjadi di dalam try, blok catch akan menangkapnya dan mengeksekusi kode di dalamnya, yang pada kasus ini adalah memperbarui nilai result dengan pesan error tersebut. Selain itu, blok finally akan selalu dijalankan, terlepas dari apakah ada exception atau tidak, dan dalam kasus ini hanya mencetak "Complete" ke konsol.
  ![Hasil](images/Soal10.png)

## Praktikum 6: Menggunakan Future dengan StatefulWidget
### Soal 11 
Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
  ![Hasil](images/Soal11.png)

### Soal 12 
1. Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian? <br>
  **Jawab :** Latitude berhasil ditampilkan dengan benar, namun longitude mengalami kesalahan tampilan karena penggunaan string literal yang kurang tepat. Hal ini terjadi karena bagian longitude seharusnya ditulis menggunakan interpolasi string yang benar di kode. Anda perlu menggunakan ${} agar Flutter menampilkan nilai dari variabel tersebut dengan benar.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 12". 
  ![Hasil](images/Soal12.png)

## Praktikum 7: Manajemen Future dengan FutureBuilder
### Soal 13
1. Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?
  **Jawab :** Dengan menggunakan FutureBuilder, UI dapat merespons status dari Future secara otomatis. Saat data sedang dimuat, FutureBuilder akan menampilkan CircularProgressIndicator. Setelah data tersedia, UI akan menampilkan posisi pengguna tanpa perlu memanggil setState(). Hal ini membuatnya lebih efisien dan tampilan kode lebih bersih.

2. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 13".
  ![Hasil](images/Soal13.png)

### Soal 14 
1. Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian? <br>
  **Jawab :** Dengan penambahan error handling, UI menjadi lebih robust. Jika terjadi kesalahan saat mendapatkan posisi, pengguna akan menerima umpan balik berupa pesan yang menjelaskan adanya masalah, daripada hanya menampilkan data kosong. Ini meningkatkan interaksi dan membantu pengguna lebih memahami kondisi aplikasi.
  ![Hasil](images/Soal14.png)

## Praktikum 8: Navigation route dengan Future Function
### Soal 15 
1. Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda. 
```dart 
import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First Screen Faradilla'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _navigateAndGetColor(context);
          },
        ),
      ),
    );
  }
}
```
### Soal 16 
1. Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ? <br>
  **Jawab :** Saat tombol "Change Color" diklik, aplikasi mengubah warna latar belakang menjadi warna lain, baik secara acak maupun mengikuti urutan tertentu. Setiap klik memicu perubahan warna yang terlihat di layar. Perubahan ini terjadi karena adanya fungsi yang dipanggil setiap kali tombol "Change Color" ditekan. Fungsi tersebut kemungkinan menggunakan metode seperti `setState()` (jika menggunakan Flutter) untuk memperbarui tampilan dengan warna baru. Setiap kali `setState()` dipanggil, layar dirender ulang dengan warna yang telah diperbarui. 
  ![Hasil](images/Soal16-1.png)
  ![Hasil](images/Soal16-2.png)
  ![Hasil](images/Soal16-3.png)
  ![Hasil](images/Soal16-4.png)
  ![Hasil](images/Soal16-5.png)

2. Gantilah 3 warna pada langkah 5 dengan warna favorit Anda! 
  ![Hasil](images/Soal16-2-1.png)
  ![Hasil](images/Soal16-2-2.png)
  ![Hasil](images/Soal16-2-3.png)
  ![Hasil](images/Soal16-2-4.png)
  ![Hasil](images/Soal16-2-5.png)

## Praktikum 9: Memanfaatkan async/await dengan Widget Dialog
### Soal 17 
1. Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ? <br>
  **Jawab :** Ketika Anda mengklik tombol warna dalam dialog (merah, hijau, atau biru), warna latar belakang layar akan berubah sesuai pilihan. Setiap tombol memperbarui nilai variabel `color` melalui `setState`, yang membuat UI menampilkan warna baru. Setelah warna diperbarui, `Navigator.pop(context);` menutup dialog, memperlihatkan latar belakang yang telah berubah.

2. Gantilah 3 warna pada langkah 3 dengan warna favorit Anda! 
  ![Hasil](images/Soal17-1.png)
  ![Hasil](images/Soal17-2.png)
  ![Hasil](images/Soal17-3.png)
  ![Hasil](images/Soal17-4.png)
  ![Hasil](images/Soal17-5.png)
