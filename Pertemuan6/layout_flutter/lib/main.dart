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
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Posisi kolom di kiri
              children: [
                // soal 2: Baris pertama teks dengan padding di bawahnya
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Bali Uluwatu Kecak Dance Show',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Baris kedua teks dengan warna abu-abu
                Text(
                  'Kawasan parkir Pura Uluwatu, Jl. Uluwatu, Pecatu, Kec. Kuta Sel., Kabupaten Badung, Bali 80361',
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

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Tari Kecak adalah salah satu tarian tradisional Bali yang paling terkenal dan sering dipertunjukkan di Pura Uluwatu,'
        'yang terletak di ujung selatan Pulau Bali. Bagi turis lokal maupun mancanegara, menonton tari kecak merupakan pilihan aktivitas yang bisa dipilih saat ke Bali.'
        'Menonton Tari Kecak di Uluwatu adalah pengalaman yang tidak hanya memanjakan mata dengan keindahan tarian dan pemandangan, tetapi juga memperkaya wawasan tentang budaya dan tradisi Bali.'
        'Dengan persiapan yang baik, Kamu dapat menikmati pertunjukan ini sepenuhnya dan membawa pulang kenangan indah dari Bali.'
        '\n\n'
        'Faradilla Roudhotul S - 2241720205',
        softWrap: true,
      ),
    );

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
  }
}
