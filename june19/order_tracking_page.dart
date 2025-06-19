import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderTrackingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body: OrderList(),
    );
  }
}

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  final List<Order> orders = [
    Order(
      id: 'ORD-78542',
      items: ['iPhone 13 Pro', 'AirPods Pro'],
      status: 'Shipped',
      amount: 999.99,
      trackingSteps: [
        TrackingStep('Order Placed', DateTime(2023, 5, 15), completed: true),
        TrackingStep('Processed', DateTime(2023, 5, 16), completed: true),
        TrackingStep('Shipped', DateTime(2023, 5, 17), completed: true),
        TrackingStep('Out for Delivery', DateTime.now(), completed: false),
        TrackingStep('Delivered', null, completed: false),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return OrderCard(order: orders[index]);
      },
    );
  }
}

class Order {
  final String id;
  final List<String> items;
  final String status;
  final double amount;
  final List<TrackingStep> trackingSteps;

  Order({
    required this.id,
    required this.items,
    required this.status,
    required this.amount,
    required this.trackingSteps,
  });
}

class TrackingStep {
  final String stage;
  final DateTime? date;
  final bool completed;

  TrackingStep(this.stage, this.date, {this.completed = false});
}

class OrderCard extends StatefulWidget {
  final Order order;

  OrderCard({required this.order});

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order #${widget.order.id}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${widget.order.items.length} items',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Chip(
                  label: Text(widget.order.status),
                  backgroundColor: _getStatusColor(widget.order.status),
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Divider(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: \$${widget.order.amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(isExpanded ? 'HIDE DETAILS' : 'TRACK ORDER'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.pink,
                  ),
                ),
              ],
            ),
            if (isExpanded) ...[
              Divider(height: 24),
              _buildTrackingSteps(widget.order.trackingSteps),
            ],
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Shipped':
        return Colors.blue;
      case 'Delivered':
        return Colors.green;
      case 'Processing':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  Widget _buildTrackingSteps(List<TrackingStep> steps) {
    return Column(
      children: steps.map((step) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: step.completed ? Colors.pink : Colors.grey[300],
                    ),
                    child: step.completed
                        ? Icon(Icons.check, size: 16, color: Colors.white)
                        : null,
                  ),
                ],
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      step.stage,
                      style: TextStyle(
                        fontWeight:
                        step.completed ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    if (step.date != null)
                      Text(
                        '${step.date!.day}/${step.date!.month}/${step.date!.year}',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}