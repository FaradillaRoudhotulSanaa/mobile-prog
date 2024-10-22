# Laporan Praktikum Belanja 

### Langkah 2: Mendefinisikan Route
- HomePage 
```
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
```
- ItemPage
```
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
```
### Langkah 3: Lengkapi Kode di main.dart
```
import 'package:flutter/material.dart';
import 'package:belanja/models/Item.dart';
import 'pages/HomePage.dart';
import 'pages/ItemPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Belanja App',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    initialRoute: '/', // Halaman awal
    routes: {
      '/': (context) => HomePage(), // Route untuk HomePage
      '/item': (context) => ItemPage(), // Route untuk ItemPage
    },
  ));
}

```
### Langkah 4: Membuat data model
```
class Item {
  String name;
  int price;

  Item({required this.name, required this.price});
}
```
### Langkah 5: Lengkapi kode di class HomePage
```
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    final List<Item> items = [
    Item(name: 'Beat Box', price: 230000),
    Item(name: 'Best Friend Ever', price: 235000),
    Item(name: 'Candy', price: 180000),
    Item(name: 'Chewing Gum', price: 255000),
    Item(name: 'Glitch Mode', price: 285000),
    Item(name: 'We Go Up', price: 265000),
    Item(name: 'My First and Last', price: 225000),
    Item(name: 'Reload', price: 250000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].name),
            subtitle: Text('Harga: ${items[index].price}'),
            onTap: () {
              Navigator.pushNamed(context, '/item',
                  arguments: items[index]); // Kirim data ke ItemPage
            },
          );
        },
      ),
    );
  }
}
```
### Langkah 6: Membuat ListView dan itemBuilder
```
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Beat Box', price: 230000),
    Item(name: 'Best Friend Ever', price: 235000),
    Item(name: 'Candy', price: 180000),
    Item(name: 'Chewing Gum', price: 255000),
    Item(name: 'Glitch Mode', price: 285000),
    Item(name: 'We Go Up', price: 265000),
    Item(name: 'My First and Last', price: 225000),
    Item(name: 'Reload', price: 250000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(7.0),
            elevation: 4,
            child: ListTile(
              title: Text(items[index].name),
              subtitle: Text('Harga: ${items[index].price}'),
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: items[index]);
              },
            ),
          );
        },
      ),
    );
  }
}

```
<img src = images/HasilLangkah6.png> <br>

### Langkah 7: Menambahkan aksi pada ListView
```
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Beat Box', price: 230000),
    Item(name: 'Best Friend Ever', price: 235000),
    Item(name: 'Candy', price: 180000),
    Item(name: 'Chewing Gum', price: 255000),
    Item(name: 'Glitch Mode', price: 285000),
    Item(name: 'We Go Up', price: 265000),
    Item(name: 'My First and Last', price: 225000),
    Item(name: 'Reload', price: 250000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Navigasi ke ItemPage dengan mengirim data item
              Navigator.pushNamed(context, '/item', arguments: items[index]);
            },
            child: Card(
              margin: EdgeInsets.all(8.0), // Margin antar card
              elevation: 4, // Efek bayangan
              child: ListTile(
                title: Text(items[index].name),
                subtitle: Text('Harga: ${items[index].price}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
```
<img src = images\HasilLangkah7.png>
<img src = images\HasilLangkah7-2.png>

# Laporan Tugas Praktikum 2

1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.
2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya.
3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.
4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations
- ItemPage 
```
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ...
            Hero(
              tag: 'hero-${item.name}', // Tag yang sama untuk animasi Hero
              child: Image.asset(
                item.imageUrl,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
    ...
  }
}
```
- HomePage 
```
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    // Item List
  ];

  @override
  Widget build(BuildContext context) {
    ...
                    Hero(
                    tag: 'hero-${items[index].name}', // Tag unik untuk Hero
                    child: Container(
                      height: 100, // Tetapkan tinggi tetap untuk gambar
                      width: double.infinity,
                      child: Image.asset(
                        items[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
    ...
  }
}
```
5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!