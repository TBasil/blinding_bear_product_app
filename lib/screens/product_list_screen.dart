// lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import 'package:product_app/screens/product_detail_screen.dart';
import '../models/product.dart'; // Importing the Product model

class ProductListScreen extends StatelessWidget {
  // Create a list of products
  final List<Product> products = [
    Product(
      title: '2 Stars',
      description: 'Blinding Bear 2Stars Hoddie.',
      price: 155.99,
      imagePath: 'assets/2star.jpeg',
    ),
    Product(
      title: 'Helmet',
      description: 'Blinding Bear Helmet Hoddie.',
      price: 45.99,
      imagePath: 'assets/helmet.jpg',
    ),
    Product(
      title: 'Start End',
      description: 'Blinding Bear Start End.',
      price: 69.99,
      imagePath: 'assets/startend.jpg',
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blinding Bear Product List'),
        titleTextStyle: TextStyle(
          color: Colors.black, // Set the color you want
          fontSize: 20, // Optional: set the font size
          fontWeight: FontWeight.bold, // Optional: set the font weight
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.title),
            titleTextStyle: TextStyle(
              color: Colors.red, // Set the color you want
              fontSize: 20, // Optional: set the font size
              fontWeight: FontWeight.bold, // Optional: set the font weight
            ),
            subtitle: Text(product.description),
            trailing: Text('\$${product.price}'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
              ),
              );
              // Navigate to product detail when tapped
            },
          );
        },
      ),
    );
  }
}
