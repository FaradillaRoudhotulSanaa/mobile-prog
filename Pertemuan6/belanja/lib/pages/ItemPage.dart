// pages/ItemPage.dart
import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  item.imageUrl,
                  fit: BoxFit.cover,
                  height: 300,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              item.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Harga: Rp ${item.price.toString().replaceAllMapped(
                RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
                (Match m) => '${m[1]}.',
              )}',
              style: TextStyle(fontSize: 20, color: Colors.green[700]),
            ),
            SizedBox(height: 8),
            Text(
              'Stok: ${item.stock} unit',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Rating: ${item.rating} ⭐',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
