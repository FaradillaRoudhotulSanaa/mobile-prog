import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.signal_cellular_alt, color: Colors.black),
          )
        ],
      ),
      body: Container(
        color: Colors.white, // Set background color to white
        child: SingleChildScrollView(
          child: Column(
            children: [
              // User Profile Section
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Move profile to right
                  children: [
                    // Name and Phone Number on the left
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Faradilla Roudhotul Sa\'naa',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '+62813xxxxxxxx',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    // Profile Picture on the right
                    Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              'images/fotoku.jpg'), // Make sure this is the correct path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              // Menu List Section
              _buildMenuItem('Account Type', 'FULL SERVICE'),
              _buildMenuItem('Account Settings', ''),
              _buildMenuItem('LinkAja Syariah', 'Not Active'),
              _buildMenuItem('Payment Method', ''),
              _buildMenuItem('Email', 'faradillaxxxxx@gmail.com'),
              _buildMenuItem('Security Question', 'Not Set'),
              _buildMenuItem('PIN Settings', ''),
              _buildMenuItem('Language', 'English'),
              _buildMenuItem('Terms of Service', ''),
              _buildMenuItem('Privacy Policy', ''),
              _buildMenuItem('Help Center', ''),
              const SizedBox(height: 20),
              // Logout Button
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
