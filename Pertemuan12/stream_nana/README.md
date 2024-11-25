### Faradilla Roudhotul Sa'naa 
### 2241720205 / 11 / TI-3B

# Lanjutan State Management dengan Streams
## Parktikum 1 : Dart Streams 

### Soal 1 
1. Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
2. Gantilah warna tema aplikasi sesuai kesukaan Anda.
```dart 
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Nana',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _StreamHomePageState();
}
class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
} 
```

### Soal 2 
1. Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
```dart 
 final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.lightGreen,
    Colors.pink,
    Colors.black,
    Colors.white,
    Colors.brown
  ];
```

### Soal 3
1. Jelaskan fungsi keyword yield* pada kode tersebut! <br>
    **Jawab :** yield* digunakan untuk mengalirkan semua data dari stream atau daftar lain (iterable) ke luar, tanpa harus mengirimkan satu per satu secara manual.

2. Apa maksud isi perintah kode tersebut? <br>
    **Jawab :** Kode tersebut membuat sebuah stream yang menghasilkan warna dari daftar colors setiap 1 detik secara bergiliran. Hasilnya, stream ini akan mengalirkan warna dari daftar colors secara berulang-ulang, satu warna setiap detik.

### Soal 4
1. Capture hasil praktikum Anda berupa GIF dan lampirkan di README. 
    ![Hasil](images/Run-Prak1.gif)

### Soal 5
1. Jelaskan perbedaan menggunakan listen dan await for (langkah 9) ! <br>
    **Jawab :** 
    - listen digunakan untuk kebutuhan real-time atau respons yang tidak memblokir, seperti UI yang diperbarui terus-menerus saat data diterima.
    - await for digunakan jika Anda ingin alur pemrosesan data yang sekuensial dan linear, seperti saat setiap langkah memerlukan penyelesaian sebelum melanjutkan.
    





