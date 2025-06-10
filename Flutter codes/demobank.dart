import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
runApp(BankDashboardApp());
}

class BankDashboardApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'UniBank - Your Future, Your Bank',
debugShowCheckedModeBanner: false,
theme: ThemeData(
primarySwatch: Colors.deepPurple,
  cardColor: Colors.deepPurpleAccent,
scaffoldBackgroundColor: Color(0xFFF8F8FF),
fontFamily: 'Roboto',
),
home: DashboardPage(),
);
}
}

class DashboardPage extends StatelessWidget {
final String userName = "Alex Morgan";
final String accountNumber = "**** 1234";
final double balance = 12542.75;

final List<Transaction> transactions = [
Transaction('Grocery Store', -54.23, DateTime.now().subtract(Duration(days: 1))),
Transaction('Salary', 2500.00, DateTime.now().subtract(Duration(days: 3))),
Transaction('Coffee & Snacks', -8.20, DateTime.now().subtract(Duration(days: 4))),
Transaction('Electricity Bill', -120.50, DateTime.now().subtract(Duration(days: 5))),
Transaction('Gym Membership', -55.00, DateTime.now().subtract(Duration(days: 10))),
];

final List<SpendingCategory> spendingCategories = [
SpendingCategory('Food', 300),
SpendingCategory('Utilities', 150),
SpendingCategory('Entertainment', 100),
SpendingCategory('Transport', 80),
SpendingCategory('Others', 40),
];

DashboardPage({Key? key}) : super(key: key);

String formatCurrency(double amount) {
final formatter = NumberFormat.simpleCurrency(decimalDigits: 2);
return formatter.format(amount);
}

String formatDate(DateTime date) {
final formatter = DateFormat('MMM d, yyyy');
return formatter.format(date);
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("UniBank Dashboard"),
elevation: 2,
actions: [
IconButton(
icon: Icon(Icons.notifications_none),
onPressed: () {
// Notification pressed
},
),
CircleAvatar(
backgroundColor: Colors.deepPurpleAccent,
child: Text(
userName[0],
style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
),
),
SizedBox(width: 16),
],
),
body: SingleChildScrollView(
padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 40),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
"Welcome back, $userName",
style: TextStyle(
fontSize: 26,
fontWeight: FontWeight.w700,
color: Colors.deepPurple[700],
),
),
SizedBox(height: 12),
AccountSummaryCard(
accountNumber: accountNumber,
balance: balance,
currencyFormatter: formatCurrency,
),
SizedBox(height: 25),
Text(
"Recent Transactions",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.w600,
color: Colors.deepPurple[800],
),
),
SizedBox(height: 12),
Container(
decoration: BoxDecoration(
color: Colors.deepPurple[50],
borderRadius: BorderRadius.circular(12),
),
child: ListView.separated(
itemCount: transactions.length,
shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),
separatorBuilder: (_, __) => Divider(height: 1, color: Colors.deepPurple[100]),
itemBuilder: (context, index) {
final tx = transactions[index];
return ListTile(
leading: CircleAvatar(
backgroundColor: tx.amount < 0 ? Colors.red[300] : Colors.green[300],
child: Icon(
tx.amount < 0 ? Icons.arrow_upward : Icons.arrow_downward,
color: Colors.white,
),
),
title: Text(tx.description, style: TextStyle(fontWeight: FontWeight.w600)),
subtitle: Text(formatDate(tx.date)),
trailing: Text(
formatCurrency(tx.amount),
style: TextStyle(
color: tx.amount < 0 ? Colors.red[700] : Colors.green[700],
fontWeight: FontWeight.bold),
),
);
},
),
),
SizedBox(height: 30),
Text(
"Quick Actions",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.w600,
color: Colors.deepPurple[800],
),
),
SizedBox(height: 12),
QuickActionsRow(),
SizedBox(height: 30),
Text(
"Your Spending",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.w600,
color: Colors.deepPurple[800],
),
),
SizedBox(height: 12),
SpendingChart(spendingCategories: spendingCategories),
],
),
),
);
}
}

class AccountSummaryCard extends StatelessWidget {
final String accountNumber;
final double balance;
final String Function(double) currencyFormatter;

const AccountSummaryCard({
Key? key,
required this.accountNumber,
required this.balance,
required this.currencyFormatter,
}) : super(key: key);

@override
Widget build(BuildContext context) {
return Card(
elevation: 5,
shadowColor: Colors.deepPurple[200],
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
child: Container(
padding: EdgeInsets.symmetric(vertical: 28, horizontal: 28),
width: double.infinity,
decoration: BoxDecoration(
gradient: LinearGradient(
colors: [Colors.deepPurple, Colors.deepPurpleAccent],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
borderRadius: BorderRadius.circular(16),
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
"Account Balance",
style: TextStyle(
color: Colors.white70,
fontSize: 16,
fontWeight: FontWeight.w500,
),
),
SizedBox(height: 8),
Text(
currencyFormatter(balance),
style: TextStyle(
color: Colors.white,
fontSize: 36,
fontWeight: FontWeight.w800,
letterSpacing: 1.1,
),
),
SizedBox(height: 12),
Text(
"Account Number: $accountNumber",
style: TextStyle(
color: Colors.white70,
fontSize: 14,
letterSpacing: 0.8,
fontWeight: FontWeight.w600,
),
),
],
),
),
);
}
}

class Transaction {
final String description;
final double amount;
final DateTime date;

Transaction(this.description, this.amount, this.date);
}

class SpendingCategory {
final String category;
final double amount;

SpendingCategory(this.category, this.amount);
}

class QuickActionsRow extends StatelessWidget {
final List<_QuickAction> actions = [
_QuickAction(Icons.send, "Transfer"),
_QuickAction(Icons.account_balance_wallet, "Deposit"),
_QuickAction(Icons.receipt, "Pay Bills"),
_QuickAction(Icons.credit_card, "Cards"),
];

QuickActionsRow({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: actions
    .map((action) => Expanded(
child: Padding(
padding: const EdgeInsets.symmetric(horizontal: 6),
child: ElevatedButton(
style: ElevatedButton.styleFrom(
    backgroundColor: Colors.purple,
padding: EdgeInsets.symmetric(vertical: 18),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
),
onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text('${action.label} clicked!')),
);
},
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Icon(action.icon, size: 26, color: Colors.white),
SizedBox(height: 6),
Text(
action.label,
style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
),
],
),
),
),
))
    .toList(),
);
}
}

class _QuickAction {
final IconData icon;
final String label;

_QuickAction(this.icon, this.label);
}

class SpendingChart extends StatelessWidget {
final List<SpendingCategory> spendingCategories;

SpendingChart({Key? key, required this.spendingCategories}) : super(key: key);

@override
Widget build(BuildContext context) {
final double total = spendingCategories.fold(0, (sum, e) => sum + e.amount);

return Container(
height: 200,
decoration: BoxDecoration(
color: Colors.blueGrey,
borderRadius: BorderRadius.circular(16),
),
padding: EdgeInsets.all(16),
child: Row(
crossAxisAlignment: CrossAxisAlignment.end,
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: spendingCategories.map((category) {
final percentage = category.amount / total;
final barHeight = 150 * percentage;
return Column(
mainAxisAlignment: MainAxisAlignment.end,
children: [
Tooltip(
message: '${category.category}: \$${category.amount.toStringAsFixed(2)}',
child: Container(
width: 28,
height: barHeight,
decoration: BoxDecoration(
color: _barColor(category.category),
borderRadius: BorderRadius.circular(8),
boxShadow: [
BoxShadow(
color: _barColor(category.category)!.withOpacity(0.6),
blurRadius: 7,
spreadRadius: 1,
offset: Offset(0, 3),
)
],
),
),
),
SizedBox(height: 12),
Text(
category.category,
style: TextStyle(
fontSize: 12,
color: Colors.deepPurple[800],
fontWeight: FontWeight.w600,
),
),
],
);
}).toList(),
),
);
}

Color? _barColor(String category) {
switch (category) {
case 'Food':
return Colors.deepPurpleAccent;
case 'Utilities':
return Colors.deepPurple[400];
case 'Entertainment':
return Colors.purple[300];
case 'Transport':
return Colors.purple[200];
case 'Others':
return Colors.purple[100];
default:
return Colors.purple;
}
}
}