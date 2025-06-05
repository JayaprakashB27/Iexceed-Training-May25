import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CircularAvatar());
}

class CircularAvatar extends StatelessWidget {
  const CircularAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CircleAvatar(
            radius: 110,
            backgroundColor: Colors.black54,

            child: CircleAvatar( //radius: 100, child: const Text("J", style: TextStyle(fontSize: 60, height: 4),),
              radius: 100,
              backgroundColor: CupertinoColors.systemGreen,
              foregroundColor:Colors.white,
              backgroundImage:AssetImage('assets/employe.jpeg'),
              foregroundImage: AssetImage('assets/foreimage.jpeg'),
            ),
          ),
        ),
      ),
    );
  }
}