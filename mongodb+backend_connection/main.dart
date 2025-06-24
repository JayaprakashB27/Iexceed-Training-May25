import 'package:flutter/material.dart';
import 'package:mongo_backend_connection/product_detail_page.dart';
import 'package:mongo_backend_connection/product_editor_sheet.dart';
import 'product_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MongoDB Product UI',
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late Future<List<Product>> futureProducts;

  final _formKey = GlobalKey<FormState>();
  final productidCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  final priceCtrl = TextEditingController();
  final statusCtrl = TextEditingController();
  final orderdateCtrl = TextEditingController();
  final shipdateCtrl = TextEditingController();
  final deliverydateCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    futureProducts = ProductService.fetchProducts();
  }

  void refreshProducts() {
    setState(() {
      futureProducts = ProductService.fetchProducts();
    });
  }

  void submitProduct() async {
    final product = Product(
      id: '',
      productid: productidCtrl.text,
      name: nameCtrl.text,
      price: priceCtrl.text,
      status: statusCtrl.text,
      orderdate: orderdateCtrl.text,
      shipdate: shipdateCtrl.text,
      deliverydate: deliverydateCtrl.text,
    );

    await ProductService.addProduct(product);

    // Clear inputs
    productidCtrl.clear();
    nameCtrl.clear();
    priceCtrl.clear();
    statusCtrl.clear();
    orderdateCtrl.clear();
    shipdateCtrl.clear();
    deliverydateCtrl.clear();

    refreshProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Column(
        children: [
          // Form to Add Product
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var controller in [
                      productidCtrl,
                      nameCtrl,
                      priceCtrl,
                      statusCtrl,
                      orderdateCtrl,
                      shipdateCtrl,
                      deliverydateCtrl,
                    ])
                      Container(
                        width: 120,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        child: TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            labelText: controller == productidCtrl
                                ? 'Product ID'
                                : controller == nameCtrl
                                ? 'Name'
                                : controller == priceCtrl
                                ? 'Price'
                                : controller == statusCtrl
                                ? 'Status'
                                : controller == orderdateCtrl
                                ? 'Order Date'
                                : controller == shipdateCtrl
                                ? 'Ship Date'
                                : 'Delivery Date',
                          ),
                        ),
                      ),
                    ElevatedButton(
                      onPressed: () async {
                        final added = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailPage(),
                          ),
                        );
                        if (added == true) refreshProducts();
                      },
                      child: const Text('Add Product'),

                    ),

                  ],
                ),
              ),
            ),
          ),

          // Display products
          Expanded(
            child: FutureBuilder<List<Product>>(
              future: futureProducts,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }

                final products = snapshot.data!;
                return ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final p = products[index];
                    return ListTile(
                      title: Text('${p.name} - \$${p.price}'),
                      subtitle: Text('Status: ${p.status}'),
                      onTap: () => showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (_) => ProductEditorSheet(
                          product: p,
                          onUpdated: refreshProducts,
                        ),
                      ),
                    );

                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
