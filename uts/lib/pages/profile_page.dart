import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Menambahkan icon profil
            Icon(
              Icons.account_circle, // Ikon profil
              size: 100, // Ukuran icon
              color: Colors.blue, // Warna icon
            ),
            SizedBox(height: 20), // Jarak antara icon dan teks
            Text(
              'Username : Muhammad Khasbul Hadi Fauzan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), // Jarak antara judul dan deskripsi
            Text(
              'NIM : 2241760039.',
              textAlign: TextAlign.center, // Mengatur teks agar berada di tengah
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
