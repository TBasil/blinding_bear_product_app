import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/product_detail_screen.dart'; // Import the product model

class ProductTile extends StatelessWidget {
  final Product product;

  ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        product.imagePath, // Use the local image
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
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
            builder: (context) => ProductDetailScreen(product: product), // Navigate to the detail screen
          ),
        );
      },
    );
  }
}
