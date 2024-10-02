// lib/models/product.dart

class Product {
  final String title;
  final String listDescription; // For listing screen
  final String detailDescription; // For detail screen
  final double price;
  final String imagePath;

  // Constructor to initialize product properties
  Product({
    required this.title,
    required this.listDescription,
    required this.detailDescription,
    required this.price,
    required this.imagePath,
  });
}

// A sample list of products (you can update this with your own data)
List<Product> sampleProducts = [
  Product(
    title: '2 Stars',
    listDescription: 'Blinding Bear 2Stars Hoodie.', // Short description for list
    detailDescription: 'This is a very unique hoodie of Blinding Bear showing 2 stars opposite and traveling like a metroid.', // Detailed description
    price: 155.99,
    imagePath: 'assets/2star.jpeg',
  ),
  Product(
    title: 'Helmet',
    listDescription: 'Blinding Bear Helmet Hoodie.',
    detailDescription: 'This hoodie showcases a helmet, a symbol of safety and elegance.',
    price: 45.99,
    imagePath: 'assets/helmet.jpg',
  ),
  Product(
    title: 'Start End',
    listDescription: 'Blinding Bear Start End Hoodie.',
    detailDescription: 'This hoodie shows the start and end of a random image in my head. It was a path I envisioned and drew, labeling start and end points.',
    price: 69.99,
    imagePath: 'assets/startend.jpg',
  ),
  // Add more products here
];
