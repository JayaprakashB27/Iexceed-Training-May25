import 'package:flutter/material.dart';
import 'package:mongo_backend_connection/product_service.dart';
import 'product_service.dart';

class ProductEditorSheet extends StatefulWidget {
  final Product product;
  final VoidCallback onUpdated;

  const ProductEditorSheet({
    super.key,
    required this.product,
    required this.onUpdated,
  });

  @override
  State<ProductEditorSheet> createState() => _ProductEditorSheetState();
}

class _ProductEditorSheetState extends State<ProductEditorSheet> {
  late TextEditingController nameCtrl;
  late TextEditingController priceCtrl;
  late TextEditingController statusCtrl;

  @override
  void initState() {
    super.initState();
    nameCtrl = TextEditingController(text: widget.product.name);
    priceCtrl = TextEditingController(text: widget.product.price);
    statusCtrl = TextEditingController(text: widget.product.status);
  }

  void updateProduct() async {
    final updated = Product(
      id: widget.product.id,
      productid: widget.product.productid,
      name: nameCtrl.text,
      price: priceCtrl.text,
      status: statusCtrl.text,
      orderdate: widget.product.orderdate,
      shipdate: widget.product.shipdate,
      deliverydate: widget.product.deliverydate,
    );

    await ProductService.updateProduct(updated);
    widget.onUpdated();
    Navigator.pop(context);
  }

  void deleteProduct() async {
    await ProductService.deleteProduct(widget.product.id);
    widget.onUpdated();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Edit Product', style: Theme.of(context).textTheme.titleLarge),
          TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: 'Name')),
          TextField(controller: priceCtrl, decoration: const InputDecoration(labelText: 'Price')),
          TextField(controller: statusCtrl, decoration: const InputDecoration(labelText: 'Status')),
          const SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(
                onPressed: updateProduct,
                child: const Text('Update'),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: deleteProduct,
                child: const Text('Delete', style: TextStyle(color: Colors.red)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
