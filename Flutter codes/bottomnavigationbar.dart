import 'package:flutter/material.dart';
import 'colors.dart';
import 'search_page.dart';
import 'alerts_page.dart';
import 'qr_scanner_page.dart';

void main() {
  runApp(MyBankApp());
}

class MyBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank',
      theme: ThemeData(
        primaryColor: AppColors.navyBlue,
        scaffoldBackgroundColor: AppColors.pureWhite,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.navyBlue,
          foregroundColor: AppColors.pureWhite,
        ),
      ),
      home: MainDashboard(),
    );
  }
}

class MainDashboard extends StatefulWidget {
  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('🏦 Home Page', style: TextStyle(fontSize: 20))),
    SearchPage(),
    QrScannerPage(),
    AlertsPage(),
    Center(child: Text('📜 History Page', style: TextStyle(fontSize: 20))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JP Bank')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.softBlueGray,
        selectedItemColor: Colors.grey,
        unselectedItemColor:Colors.lightBlue,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
