// lib/models/product.dart

class Product {
  final String title;
  final String description;
  final double price;
  final String imagePath;

  // Constructor to initialize product properties
  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

// A sample list of products (you can update this with your own data)
List<Product> sampleProducts = [
  Product(
    title: '2 Stars',
    description: 'This is a very unique hoodie of Blinding Bear showing 2 stars opposite and travelling like metroid.',
    price: 155.99,
    imagePath: 'assets/2star.jpeg',
  ),
  Product(
    title: 'Helmet',
    description: 'This is hoodie showcasing helmet. Helmet symbol of safety and elegance.',
    price: 45.99,
    imagePath: 'assets/helmet.jpg',
  ),
  Product(
    title: 'Start End',
    description: 'This is hoodie showcasing start and end of random image in my head. It was a path that came into my mind and i drew it, labeling start and end points.',
    price: 69.99,
    imagePath: 'assets/startend.jpg',
  ),
  // Add more products here
];
