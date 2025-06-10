import 'package:flutter/material.dart';

const Color primaryGreen = Color(0xFF00836C);
const Color accentOrange = Color(0xFFF58220);

void main() => runApp(IDBICloneApp());

class IDBICloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDBI Bank Clone',
      theme: ThemeData(
        primaryColor: primaryGreen,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: primaryGreen,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: IDBIHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IDBIHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          FlutterLogo(), // You can use your own logo asset
          SizedBox(width: 8),
          Text('IDBI Bank'),
        ]),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Sign In', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Register', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(16),
            height: 150,
            decoration: BoxDecoration(
              color: primaryGreen,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Welcome to IDBI GoMobile+',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                _featureTile(context, Icons.login, 'NetBanking', NetBankingPage()),
                _featureTile(context, Icons.book, 'mPassbook', MPassbookPage()),
                _featureTile(context, Icons.payment, 'Recharge & Pay', RechargePage()),
                _featureTile(context, Icons.account_balance, 'Loans', LoansPage()),
                _featureTile(context, Icons.receipt, 'E‑Statements', StatementsPage()),
                _featureTile(context, Icons.support_agent, 'Customer Care', HelpPage()),
              ],
            ),
          ),
          SizedBox(height: 32),
          Container(
            color: Colors.grey.shade200,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(children: [
              Wrap(
                spacing: 24,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  _footerLink('About Us'),
                  _footerLink('Investor Corner'),
                  _footerLink('Services & Fees'),
                  _footerLink('Branch Locator'),
                  _footerLink('Contact Us'),
                ],
              ),
              SizedBox(height: 16),
              Text('© IDBI Bank Ltd.', style: TextStyle(color: Colors.grey[600])),
            ]),
          )
        ]),
      ),
    );
  }

  Widget _featureTile(
      BuildContext context, IconData icon, String title, Widget page) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => page),
      ),
      child: Container(
        width: 140,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        child: Column(
          children: [
            Icon(icon, size: 36, color: primaryGreen),
            SizedBox(height: 8),
            Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black87)),
          ],
        ),
      ),
    );
  }

  Widget _footerLink(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(text, style: TextStyle(color: primaryGreen)),
    );
  }
}

// ======================= Pages ============================

class NetBankingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _PageScaffold(
      title: 'NetBanking',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('➡ View balance'),
          Text('➡ Fund Transfer'),
          Text('➡ Mini Statement'),
        ],
      ),
    );
  }
}

class MPassbookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _PageScaffold(
      title: 'mPassbook',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('➡ Last 10 Transactions'),
          Text('➡ Export PDF'),
        ],
      ),
    );
  }
}

class RechargePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _PageScaffold(
      title: 'Recharge & Pay',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('➡ Mobile Recharge'),
          Text('➡ DTH Recharge'),
          Text('➡ Bill Payment'),
        ],
      ),
    );
  }
}

class LoansPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _PageScaffold(
      title: 'Loans',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('➡ Personal Loan'),
          Text('➡ Home Loan'),
          Text('➡ Car Loan'),
        ],
      ),
    );
  }
}

class StatementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _PageScaffold(
      title: 'E‑Statements',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('➡ Email Statement'),
          Text('➡ Monthly PDF Download'),
        ],
      ),
    );
  }
}

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _PageScaffold(
      title: 'Customer Care',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('➡ 24/7 Helpline: 1800 209 4324'),
          Text('➡ Email: support@idbibank.in'),
        ],
      ),
    );
  }
}

// ================ Shared Page Layout ==================

class _PageScaffold extends StatelessWidget {
  final String title;
  final Widget content;

  _PageScaffold({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: content,
      ),
    );
  }
}
