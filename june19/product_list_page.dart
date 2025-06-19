import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductListPage extends StatelessWidget {
  final List<Category> categories = [
    Category('Electronics', [
      Product('iPhone 13 Pro', 999.99, 'assets/images/iphone.jpeg', 4.5),
      Product('MacBook Pro', 1999.99, 'assets/images/macbook.jpeg', 4.8),
    ]),
    Category('Fashion', [
      Product('Nike Air Max', 129.99, 'assets/images/nike.jpeg', 4.3),
      Product('Levi\'s Jeans', 59.99, 'assets/images/jeans.jpeg', 4.0),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Products'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  categories[index].name,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),
              SizedBox(
                height: 50, // Increased height for better visibility
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories[index].products.length,
                  itemBuilder: (context, productIndex) {
                    return ProductCard(
                      product: categories[index].products[productIndex],
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Category {
  final String name;
  final List<Product> products;

  Category(this.name, this.products);
}

class Product {
  final String name;
  final double price;
  final String imagePath;
  final double rating;

  Product(this.name, this.price, this.imagePath, this.rating);
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190, // Adjusted width for better layout
      margin: EdgeInsets.only(left: 16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Container(
                height: 100, // Increased height for images
                color: Colors.grey[200],
                child: Image.asset(
                  product.imagePath,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Icon(Icons.image_not_supported,
                          color: Colors.grey[400]),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      RatingBarIndicator(
                        rating: product.rating,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 14,
                        direction: Axis.horizontal,
                      ),
                      SizedBox(width: 4),
                      Text('${product.rating}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}