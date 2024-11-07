import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
Item(
      name: 'Beat Box',
      price: 230000,
      imageUrl: 'images/AlbumBeatBox.jpeg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Best Friend Ever',
      price: 235000,
      imageUrl: 'images/AlbumBestFriendsEver.jpeg',
      stock: 5,
      rating: 4.0,
    ),
    Item(
      name: 'Candy',
      price: 180000,
      imageUrl: 'images/AlbumCandy.jpeg',
      stock: 20,
      rating: 4.8,
    ),
    Item(
      name: 'Chewing Gum',
      price: 255000,
      imageUrl: 'images/AlbumChewingGum.jpeg',
      stock: 15,
      rating: 4.3,
    ),
    Item(
      name: 'Glitch Mode',
      price: 285000,
      imageUrl: 'images/AlbumGlitchMode.jpeg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'My First and Last',
      price: 225000,
      imageUrl: 'images/AlbumMyFirstAndLast.jpeg',
      stock: 10,
      rating: 4.7,
    ),
    Item(
      name: 'Reload',
      price: 250000,
      imageUrl: 'images/AlbumReload.jpeg',
      stock: 10,
      rating: 4.9,
    ),
    Item(
      name: 'We Go Up',
      price: 265000,
      imageUrl: 'images/AlbumWeGoUp.jpeg',
      stock: 10,
      rating: 4.6,
    ),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nana K-Pop Store',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 0.75, 
          crossAxisSpacing: 10.0, 
          mainAxisSpacing: 10.0, 
        ),
        padding: const EdgeInsets.all(10.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              // Navigasi ke ItemPage dan kirim item sebagai parameter
              context.go('/item', extra: item);
            },
            child: Card(
              elevation: 4,
              color: Colors.grey[50],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.5),
                        child: Image.asset(
                          item.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      item.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Harga: Rp ${item.price.toString().replaceAllMapped(
                        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
                        (Match m) => '${m[1]}.',
                      )}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green[700],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('Stok: ${item.stock} unit'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}