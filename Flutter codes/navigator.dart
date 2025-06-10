import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Navi2.dart';

void main(){
  runApp(NavigatorEx());
}


class NavigatorEx extends StatelessWidget {
  const NavigatorEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Home Screen"),centerTitle: true,backgroundColor: Colors.greenAccent,toolbarHeight: 100,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Go to Profile"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text("Go to Settings"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Text("chat with us"),
            ),
          ],
        ),
      ),
    );
  }
}