import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengembalikan Scaffold sebagai struktur dasar halaman
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Page'),
      ),
      body: const Center(
        child: Text(
          'Detail Item',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
