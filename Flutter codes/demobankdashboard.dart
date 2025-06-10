import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(BankApp());

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyBank Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to MyBank'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Lottie.network(
              'https://lottie.host/35c81f0c-0b85-4a43-a8a3-54f1c5f5b780/WK3ykcJmhH.json',
              height: 180,
            ),
            const SizedBox(height: 10),
            AnimatedBalanceCard(),
            const SizedBox(height: 20),
            Text("Quick Actions", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            QuickActions(),
            const SizedBox(height: 20),
            Text("Exclusive Offers", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            OffersCarousel(),
            const SizedBox(height: 20),
            Text("Recent Transactions", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            RecentTransactionList(),
          ],
        ),
      ),
    );
  }
}

// Reuse component code (unchanged) ...

class AnimatedBalanceCard extends StatefulWidget {
  @override
  _AnimatedBalanceCardState createState() => _AnimatedBalanceCardState();
}

class _AnimatedBalanceCardState extends State<AnimatedBalanceCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _controller, curve: Curves.easeInOutCirc));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF004481), Color(0xFF007EA7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Balance",
                style: TextStyle(color: Colors.white70, fontSize: 16)),
            SizedBox(height: 10),
            Text("₹2,45,000",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class QuickActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        QuickActionItem(title: 'Send', icon: Icons.send),
        QuickActionItem(title: 'Receive', icon: Icons.download),
        QuickActionItem(title: 'Top-Up', icon: Icons.add_card),
        QuickActionItem(title: 'History', icon: Icons.history),
      ],
    );
  }
}

class QuickActionItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const QuickActionItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF004481),
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 6),
        Text(title, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class OffersCarousel extends StatefulWidget {
  @override
  _OffersCarouselState createState() => _OffersCarouselState();
}

class _OffersCarouselState extends State<OffersCarousel> {
  final List<String> offers = [
    'https://via.placeholder.com/300x150.png?text=Loan+Offer',
    'https://via.placeholder.com/300x150.png?text=Mutual+Fund+Offer',
    'https://via.placeholder.com/300x150.png?text=New+Credit+Card',
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
            itemCount: offers.length,
            controller: PageController(viewportFraction: 0.9),
            onPageChanged: (index) => setState(() => _current = index),
            itemBuilder: (_, i) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: NetworkImage(offers[i]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            offers.length,
                (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? Colors.black : Colors.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RecentTransactionList extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = const [
    {'title': 'Online Shopping', 'amount': '- ₹2,000', 'icon': Icons.shopping_bag},
    {'title': 'Salary Credit', 'amount': '+ ₹50,000', 'icon': Icons.account_balance_wallet},
    {'title': 'Recharge', 'amount': '- ₹399', 'icon': Icons.phone_android},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions
          .map(
            (tx) => ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color(0xFF007EA7),
            child: Icon(tx['icon'], color: Colors.white),
          ),
          title: Text(tx['title']),
          trailing: Text(tx['amount'],
              style: TextStyle(
                  color: tx['amount'].contains('+') ? Colors.green : Colors.red)),
        ),
      )
          .toList(),
    );
  }
}
