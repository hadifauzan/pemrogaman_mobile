import 'package:flutter/material.dart';
import 'package:layout_flutter/pages/home_page.dart';
import 'package:layout_flutter/pages/item_page.dart';

void main() { 
  runApp(MaterialApp(
   initialRoute: '/',
   routes: {
    '/': (context) => HomePage(),
    '/item': (context) => ItemPage()
   } 
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Moved titleSection inside build method
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // Adding the widget from the image here
    Widget itemListSection = Container(
      margin: const EdgeInsets.all(8),
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            child: InkWell( // Make sure InkWell wraps the interactive area
              onTap: () {
                Navigator.pushNamed(context, '/item'); // Navigate on tap
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(child: Text(item.name)),
                    Expanded(
                      child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Muhammad Khasbul Hadi Fauzan dan 2241760039',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            Center(
              child: titleSection,
            ),
            Expanded(child: itemListSection), // Display the list of items
          ],
        ),
      ),
    );
  }
}

// Dummy item list for demo purposes
class Item {
  String name;
  int price;

  Item({required this.name, required this.price});
}

List<Item> items = [
  Item(name: 'Sugar', price: 5000),
  Item(name: 'Salt', price: 2000),
];
