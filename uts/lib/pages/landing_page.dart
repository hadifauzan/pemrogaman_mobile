import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menambahkan Icon buku
            Icon(
              Icons.book, // Icon buku dari Flutter
              size: 100, // Ukuran icon
              color: Colors.blue, // Warna icon
            ),
            SizedBox(height: 20),
            Text(
              'Selamat datang di aplikasi perpustakaan', 
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
