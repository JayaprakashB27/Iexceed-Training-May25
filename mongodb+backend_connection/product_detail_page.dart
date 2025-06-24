import 'package:flutter/material.dart';
import 'product_service.dart';

class ProductDetailPage extends StatefulWidget {
  final Product? product; // null means "create new"

  const ProductDetailPage({super.key, this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late TextEditingController productidCtrl;
  late TextEditingController nameCtrl;
  late TextEditingController priceCtrl;
  late TextEditingController statusCtrl;
  late TextEditingController orderdateCtrl;
  late TextEditingController shipdateCtrl;
  late TextEditingController deliverydateCtrl;

  @override
  void initState() {
    super.initState();
    productidCtrl = TextEditingController(text: widget.product?.productid ?? '');
    nameCtrl = TextEditingController(text: widget.product?.name ?? '');
    priceCtrl = TextEditingController(text: widget.product?.price ?? '');
    statusCtrl = TextEditingController(text: widget.product?.status ?? '');
    orderdateCtrl = TextEditingController(text: widget.product?.orderdate ?? '');
    shipdateCtrl = TextEditingController(text: widget.product?.shipdate ?? '');
    deliverydateCtrl = TextEditingController(text: widget.product?.deliverydate ?? '');
  }

  void save() async {
    final product = Product(
      id: widget.product?.id ?? '',
      productid: productidCtrl.text,
      name: nameCtrl.text,
      price: priceCtrl.text,
      status: statusCtrl.text,
      orderdate: orderdateCtrl.text,
      shipdate: shipdateCtrl.text,
      deliverydate: deliverydateCtrl.text,
    );

    if (widget.product == null) {
      // New product
      await ProductService.addProduct(product);
    } else {
      // Update existing
      await ProductService.updateProduct(product);
    }

    if (mounted) Navigator.pop(context, true); // Go back and refresh
  }

  @override
  Widget build(BuildContext context) {
    final isNew = widget.product == null;
    return Scaffold(
      appBar: AppBar(title: Text(isNew ? 'Add Product' : 'Edit Product')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
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
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: save,
                child: Text(isNew ? 'Add' : 'Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
