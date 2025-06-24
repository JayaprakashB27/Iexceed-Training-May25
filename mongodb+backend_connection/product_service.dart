import 'dart:convert';
import 'package:http/http.dart' as http;

// Change to your local IP if using Android device/emulator
const String baseUrl = 'http://localhost:3000';

class Product {
  final String id;
  final String productid;
  final String name;
  final String price;
  final String status;
  final String orderdate;
  final String shipdate;
  final String deliverydate;

  Product({
    required this.id,
    required this.productid,
    required this.name,
    required this.price,
    required this.status,
    required this.orderdate,
    required this.shipdate,
    required this.deliverydate,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['_id'],
      productid: json['productid'],
      name: json['name'],
      price: json['price'],
      status: json['status'],
      orderdate: json['orderdate'],
      shipdate: json['shipdate'],
      deliverydate: json['deliverydate'],
    );
  }
}

class ProductService {
  static Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/products'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

  static Future<void> updateProduct(Product product) async {
    final response = await http.put(
      Uri.parse('$baseUrl/products/${product.id}'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'productid': product.productid,
        'name': product.name,
        'price': product.price,
        'status': product.status,
        'orderdate': product.orderdate,
        'shipdate': product.shipdate,
        'deliverydate': product.deliverydate,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update product');
    }
  }

  static Future<void> deleteProduct(String id) async {
    final response = await http.delete(Uri.parse('$baseUrl/products/$id'));
    if (response.statusCode != 200) {
      throw Exception('Failed to delete product');
    }
  }

  static Future<void> addProduct(Product product) async {
    final response = await http.post(
      Uri.parse('$baseUrl/products'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'productid': product.productid,
        'name': product.name,
        'price': product.price,
        'status': product.status,
        'orderdate': product.orderdate,
        'shipdate': product.shipdate,
        'deliverydate': product.deliverydate,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to add product');
    }
  }
}
