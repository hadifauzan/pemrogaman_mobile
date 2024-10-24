import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Menambahkan icon about
            Icon(
              Icons.info, // Ikon info
              size: 100,  // Ukuran icon
              color: Colors.blue, // Warna icon
            ),
            SizedBox(height: 20), // Jarak antara icon dan teks
            Text(
              'Tentang Aplikasi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), // Jarak antara judul dan deskripsi
            Text(
              'Aplikasi ini adalah perpustakaan digital sederhana yang memungkinkan pengguna '
              'untuk menjelajahi berbagai fitur perpustakaan. Anda dapat mencari buku, '
              'melihat informasi buku, dan mengelola profil Anda.',
              textAlign: TextAlign.center, // Mengatur teks agar berada di tengah
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
