import 'package:flutter/material.dart';

void main() {
  runApp(const FirstOne());
}

class FirstOne extends StatelessWidget {
  const FirstOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: const Text("User Details"),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.red,
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: const [
            ListTileContainer(
              title: 'Jayaprakash B',
              subtitle: 'Email: jayaprakash@gmail.com',
            ),
            ListTileContainer(
              title: 'Kushal Kumar',
              subtitle: 'Email: kushalkumar@gmail.com',
            ),
            ListTileContainer(
              title: 'Nikhil Sanjay',
              subtitle: 'Email: nikhilsanjay@gmail.com',
            ),
            ListTileContainer(
              title: 'Vivin',
              subtitle: 'Email: vivin@gmail.com',
            ),
            ListTileContainer(
              title: 'Sanjay',
              subtitle: 'Email: sanjay@gmail.com',
            ),
            ListTileContainer(
              title: 'Likith',
              subtitle: 'Email: likith@gmail.com',
            ),
            ListTileContainer(
              title: 'kumar',
              subtitle: 'Email: kumar@gmail.com',
            ),
            ListTileContainer(
              title: 'Selvaraj ',
              subtitle: 'Email: selvaraj@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}

class ListTileContainer extends StatelessWidget {
  final String title;
  final String subtitle;

  const ListTileContainer({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  void _navigateToDetails(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserDetailsPage(
          name: title,
          email: subtitle.split(':').last.trim(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white, // distinct color from body
        borderRadius: BorderRadius.circular(12), // border radius only
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => _navigateToDetails(context),
        child: ListTile(
          iconColor: Colors.red,
          leading: const Icon(Icons.person),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}

class UserDetailsPage extends StatelessWidget {
  final String name;
  final String email;

  const UserDetailsPage({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(name, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            const Text(
              'Email:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(email, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
