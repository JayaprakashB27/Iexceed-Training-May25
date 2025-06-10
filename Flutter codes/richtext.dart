import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RichText with Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RichTextDrawerPage(),
    );
  }
}

class RichTextDrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText with Drawer'),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Home clicked')),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Settings clicked')),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('About clicked')),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // First Container for RichText
          Container(
            padding: EdgeInsets.all(16.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: '!',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  TextSpan(
                    text: '\nBuild beautiful apps with ',
                    style: TextStyle(fontSize: 18, color: Colors.lightGreen[700]),
                  ),
                  TextSpan(
                    text: 'RichText',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.pinkAccent,
                        fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                    text: ' and Drawer.',
                    style: TextStyle(fontSize: 18, color: Colors.purple[700]),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 100), // Space between the two containers
          // Second Container for small boxes
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.pink,
                  child: Center(child: Text('Box 1', style: TextStyle(color: Colors.white))),
                ),
                SizedBox(height: 10), // Space between boxes
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Center(child: Text('Box 2', style: TextStyle(color: Colors.white))),
                ),
                SizedBox(height: 10), // Space between boxes
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.green,
                  child: Center(child: Text('Box 3', style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}