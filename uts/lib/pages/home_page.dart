import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Menambahkan icon home
            Icon(
              Icons.home, // Icon home
              size: 100,  // Ukuran icon
              color: Colors.blue, // Warna icon
            ),
            SizedBox(height: 20), // Memberikan jarak antara icon dan teks utama
            Text(
              'Selamat datang pada halaman Home', 
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Ini adalah aplikasi perpustakaan sederhana. Anda bisa menjelajahi fitur-fitur lainnya di sini.',
              textAlign: TextAlign.center, 
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
