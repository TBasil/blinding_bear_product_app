import 'package:flutter/material.dart';
import 'screens/product_list_screen.dart'; // Import the Product List Screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blinding Bear Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListScreen(), // Set the Product List Screen as the home screen
    );
  }
}
