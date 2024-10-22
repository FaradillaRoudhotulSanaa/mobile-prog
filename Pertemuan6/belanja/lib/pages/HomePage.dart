import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

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
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ItemGrid(items: items),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}

// Custom AppBar dengan gradient background
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0288D1), Color(0xFF26C6DA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      title: Text(
        'Jihan Shop',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

// Grid Widget untuk menampilkan daftar item dengan efek hover pada Card
class ItemGrid extends StatelessWidget {
  final List<Item> items;

  const ItemGrid({required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemCard(item: items[index]);
      },
    );
  }
}

// Widget untuk menampilkan detail setiap item dengan animasi hover
class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        margin: EdgeInsets.all(8.0),
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'hero-${item.name}',
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  image: DecorationImage(
                    image: AssetImage(item.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Harga: Rp ${item.price.toString().replaceAllMapped(
                          RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
                          (Match m) => '${m[1]}.',
                        )}',
                    style: TextStyle(color: Colors.green[800]),
                  ),
                  Text('Stok: ${item.stock}'),
                  SizedBox(height: 4),
                  RatingBar(rating: item.rating),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget RatingBar untuk menampilkan bintang dengan warna yang lebih jelas
class RatingBar extends StatelessWidget {
  final double rating;

  const RatingBar({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          index < rating.floor()
              ? Icons.star
              : (index < rating ? Icons.star_half : Icons.star_border),
          size: 16.0,
          color: Colors.yellow[700],
        );
      }),
    );
  }
}

// Footer yang tetap di bawah dengan ikon
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 18),
          SizedBox(width: 8),
          Text(
            'Faradilla Roudhotul S',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
