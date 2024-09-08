import 'package:flutter/material.dart';
import 'package:updish_demo/product_card.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ProductCatalogue extends StatefulWidget {
  const ProductCatalogue({super.key});

  @override
  State<ProductCatalogue> createState() => _ProductCatalogueState();
}

class _ProductCatalogueState extends State<ProductCatalogue> {
  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> products = [
      {'imageUrl': 'https://img.freepik.com/free-photo/photo-delicious-hamburger-isolated-white-background_125540-3378.jpg', 'title': 'Product 1', 'price': 29.99},
      {'imageUrl': 'https://img.freepik.com/free-photo/delicious-fried-chicken-plate_144627-27383.jpg', 'title': 'Product 2', 'price': 19.99},
      {'imageUrl': 'https://img.freepik.com/free-photo/close-up-burgers-with-fries-plate_23-2148262913.jpg', 'title': 'Product 3', 'price': 49.99},
      {'imageUrl': 'https://img.freepik.com/free-photo/baked-chicken-wings-asian-style-tomatoes-sauce-plate_2829-10657.jpg', 'title': 'Product 4', 'price': 50.99},
      {'imageUrl': 'https://img.freepik.com/free-photo/high-angle-fried-chicken-drumsticks-with-ketchup-fries_23-2148682840.jpg', 'title': 'Product 5', 'price': 9.99},
      {'imageUrl': 'https://img.freepik.com/free-photo/big-tasty-burger-with-fries_144627-24416.jpg', 'title': 'Product 6', 'price': 21.99},
      // Add more products as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
        scrolledUnderElevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            imageUrl: products[index]['imageUrl'],
            title: products[index]['title'],
            key: Key("${products[index]['title']}/$index/${products[index]['price']}"),
            price: products[index]['price'],
            onAddToCart: () {
              print('Add ${products[index]['title']} to cart');
            },
          );
        },
      ),
    );
  }
}