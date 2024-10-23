import 'package:flutter/material.dart';
import 'dart:async';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 240, 241, 246),
              Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 90.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/logo-linkaja.png',
                        width: 40,
                        height: 40,
                      ),
                      Row(
                        children: [
                          _buildIconContainer(Icons.favorite_outline, () {}),
                          SizedBox(width: 10),
                          _buildIconContainer(Icons.support_agent, () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 205, 34, 51),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi, FARADILLA ROUDHOTUL SA'NAA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildBalanceCard("Your Balance",
                                      "Rp *********", Icons.arrow_circle_right),
                                  SizedBox(width: 16),
                                  _buildBalanceCard("Bonus Balance", " 0",
                                      Icons.arrow_circle_right,
                                      isBonus: true),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildQuickActionButton(Icons.add, "TopUp"),
                              _buildQuickActionButton(
                                  Icons.account_balance_wallet, "CashOut"),
                              _buildQuickActionButton(Icons.send, "Send Money"),
                              _buildQuickActionButton(
                                  Icons.widgets_outlined, "See All"),
                            ],
                          ),
                        ),
                        GridView.count(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 4,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          children: [
                            _buildServiceIcon(
                                Icons.phone_android, "Pulsa/Data"),
                            _buildServiceIcon(Icons.flash_on, "Electricity"),
                            _buildServiceIcon(Icons.tv, "Cable TV & Internet"),
                            _buildServiceIcon(Icons.credit_card, "Cardless"),
                            _buildServiceIcon(Icons.mosque, "Masjid"),
                            _buildServiceIcon(
                                Icons.volunteer_activism, "Infaq"),
                            _buildServiceIcon(
                                Icons.favorite_border, "Other Donations"),
                            _buildServiceIcon(Icons.more_horiz, "More"),
                          ],
                        ),
                        _buildSwipeableBanner(),
                        _buildStyledBannerAd(),
                        _buildStyledBannerAd2(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildIconContainer(IconData icon, VoidCallback onPressed) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 3,
          offset: Offset(0, 1),
        ),
      ],
    ),
    padding: EdgeInsets.all(4.0),
    child: IconButton(
      icon: Icon(icon, color: Colors.black, size: 24),
      onPressed: onPressed,
    ),
  );
}

Widget _buildBalanceCard(String label, String amount, IconData icon,
    {bool isBonus = false}) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(color: Colors.black)),
              Row(
                children: [
                  if (isBonus)
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: const Color.fromARGB(255, 243, 192, 63),
                          size: 20,
                        ),
                        SizedBox(width: 4),
                      ],
                    ),
                  Text(
                    amount,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            icon,
            color: isBonus
                ? Color.fromARGB(255, 205, 34, 51)
                : Color.fromARGB(255, 205, 34, 51),
          ),
        ],
      ),
    ),
  );
}

Widget _buildQuickActionButton(IconData icon, String label) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Color.fromARGB(255, 205, 34, 51),
        child: Icon(icon, color: Colors.white),
      ),
      SizedBox(height: 8),
      Text(label, style: TextStyle(fontSize: 12)),
    ],
  );
}

Widget _buildServiceIcon(IconData icon, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 205, 34, 51),
        child: Icon(icon, color: Colors.white),
      ),
      const SizedBox(height: 8),
      Text(
        label,
        style: const TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget _buildSwipeableBanner() {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  Timer.periodic(Duration(seconds: 2), (Timer timer) {
    if (_currentPage < 4) {
      _currentPage++;
    } else {
      _currentPage = 0;
    }
    _pageController.animateToPage(
      _currentPage,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  });

  return Container(
    margin: EdgeInsets.only(top: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: AspectRatio(
      aspectRatio: 900 / 400,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: _buildBannerImage('images/${index + 1}.jpg'),
          );
        },
      ),
    ),
  );
}

Widget _buildBannerImage(String imagePath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Image.asset(
      imagePath,
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  );
}

Widget _buildStyledBannerAd() {
  return Container(
    margin: EdgeInsets.only(top: 16),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Best Deals",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            TextButton(
              onPressed: () {
                // Aksi ketika "See All" ditekan
              },
              child: Text(
                "See All",
                style: TextStyle(
                  color: Color.fromARGB(255, 205, 34, 51),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildBannerItem(
                imagePath: 'images/best1.jpg',
                title: 'Bebas Biaya Pasang baru Indihome Rp.0* via LinkAja.',
                caption:
                    'Miliki layanan internet dan hiburan di rumah bersama keluarga dengan IndiHome.',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/best2.jpg',
                title: 'Beli Voucher Games Harga Terjangkau Disini!',
                caption:
                    'Baru nih! Ada menu voucher games baru dengan harga terjangkau di LinkAja loh.',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/best3.jpg',
                title: 'Promo Bright Gas MyPertamina',
                caption:
                    'Promo Bright Gas MyPertamina. Dengan Syarat dan Ketentuan Program yang berlaku.',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/best4.jpg',
                title: 'Bayar BPJS Kesehatan Anti Ribet di LinkAja',
                caption:
                    'Sobat LinkAja, jangan sampai agenda check up kamu terhalang karena telat bayar BPJS!',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildStyledBannerAd2() {
  return Container(
    margin: EdgeInsets.only(top: 16),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Latest Updates",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildBannerItem(
                imagePath: 'images/best1.jpg',
                title: 'Bebas Biaya Pasang baru Indihome Rp.0* via LinkAja.',
                caption:
                    'Miliki layanan internet dan hiburan di rumah bersama keluarga dengan IndiHome.',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/best2.jpg',
                title: 'Beli Voucher Games Harga Terjangkau Disini!',
                caption:
                    'Baru nih! Ada menu voucher games baru dengan harga terjangkau di LinkAja loh.',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/best3.jpg',
                title: 'Promo Bright Gas MyPertamina',
                caption:
                    'Promo Bright Gas MyPertamina. Dengan Syarat dan Ketentuan Program yang berlaku.',
              ),
              SizedBox(width: 16),
              _buildBannerItem(
                imagePath: 'images/best4.jpg',
                title: 'Bayar BPJS Kesehatan Anti Ribet di LinkAja',
                caption:
                    'Sobat LinkAja, jangan sampai agenda check up kamu terhalang karena telat bayar BPJS!',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildBannerItem({
  required String imagePath,
  required String title,
  required String caption,
}) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 150,
            width: double.infinity,
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                caption,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}