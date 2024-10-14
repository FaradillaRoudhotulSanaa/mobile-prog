# Laporan Pertemuan 6 

## Praktikum 1 : Membangun Layout di Flutter

Langkah 1: Buat Project Baru
<img src = images\P1-BuatProjectBaru.png> <br>
Langkah 2: Buka file lib/main.dart
```
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Faradilla Roudhotul S 2241720205',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```
<img src = images\P1-Langkah2.png> <br>

Langkah 4: Implementasi title row
```
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      Widget titleSection = Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              // soal 1: Expanded widget
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,  // Posisi kolom di kiri
                children: [
                  // soal 2: Baris pertama teks dengan padding di bawahnya
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Wisata Gunung di Batu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Baris kedua teks dengan warna abu-abu
                  Text(
                    'Batu, Malang, Indonesia',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            // soal 3: Ikon bintang dan teks rating
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            const Text('41'),
          ],
        ),
      );

    return MaterialApp(
      title: 'Flutter layout: Faradilla Roudhotul S 2241720205',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
```
<img src = images\P1-Langkah4.png>

## Praktikum 2 : Implementasi button row 

Langkah 1: Buat method Column _buildButtonColumn
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ···
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```

Langkah 2: Buat widget buttonSection
```
Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);
```
Langkah 3: Tambah button section ke body
```
return MaterialApp(
      title: 'Flutter layout: Faradilla Roudhotul S 2241720205',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection
          ],
        ),
      ),
    );
```
<img src = images\P2-HasilAkhir.png>

## Praktikum 3 : Implementasi text section 
```
Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Carilah teks di internet yang sesuai '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Tambahkan nama dan NIM Anda sebagai '
        'identitas hasil pekerjaan Anda. '
        'Selamat mengerjakan 🙂.',
        softWrap: true,
      ),
    );
```
Langkah 2: Tambahkan variabel text section ke body
```
return MaterialApp(
      title: 'Flutter layout: Faradilla Roudhotul S 2241720205',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
```
<img src = images\P3-HasilAkhir.png>

## Praktikum 4 : Implementasi image section

Langkah 1: Siapkan aset gambar
```
 uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - images\jtp3.jpg
```
Langkah 2: Tambahkan gambar ke body
```
return MaterialApp(
      title: 'Flutter layout: Faradilla Roudhotul S 2241720205',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            Image.asset(
              'images\tarikecakuluwatu.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
```
Langkah 3: Terakhir, ubah menjadi ListView
```
return MaterialApp(
      title: 'Flutter layout: Faradilla Roudhotul S 2241720205',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/tarikecakuluwatu.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
```
<img src = images\P4-HasilAkhir.png>


