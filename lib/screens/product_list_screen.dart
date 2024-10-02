// lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import 'package:product_app/screens/product_detail_screen.dart';
import '../models/product.dart'; // Import the Product model and sampleProducts list

class ProductListScreen extends StatelessWidget {
  final List<Product> products = sampleProducts; // Use the sampleProducts list from product.dart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blinding Bear Product List'),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.title),
            titleTextStyle: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            subtitle: Text(product.listDescription), // Display the list description
            trailing: Text('\$${product.price}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
