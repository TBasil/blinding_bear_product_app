import 'package:flutter/material.dart';
import '../models/product.dart'; // Import the product model

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
        titleTextStyle: TextStyle(
          color: Colors.red, // Set the color you want
          fontSize: 20, // Optional: set the font size
          fontWeight: FontWeight.bold, // Optional: set the font weight
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imagePath, // Use the local image
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              product.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(product.description),
            SizedBox(height: 16),
            Text(
              '\$${product.price}',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
