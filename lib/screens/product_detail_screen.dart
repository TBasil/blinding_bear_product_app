import 'package:flutter/material.dart';
import '../models/product.dart'; // Import the product model

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool _isZoomed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.title),
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
            GestureDetector(
              onTapDown: (_) {
                // When the user taps down, zoom the image
                setState(() {
                  _isZoomed = true;
                });
              },
              onTapUp: (_) {
                // When the user releases the tap, return the image to normal size
                setState(() {
                  _isZoomed = false;
                });
              },
              onTapCancel: () {
                // If the tap is cancelled (user slides off), return to normal size
                setState(() {
                  _isZoomed = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                transform: Matrix4.identity()..scale(_isZoomed ? 1.5 : 1.0), // Zoom effect
                width: 400,
                height: 400,
                child: Image.asset(
                  widget.product.imagePath, // Use the local image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              widget.product.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Use the detailed description instead of the list description
            Text(widget.product.detailDescription),
            SizedBox(height: 16),
            Text(
              '\$${widget.product.price}',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
