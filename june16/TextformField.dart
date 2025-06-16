import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(textformFieldEx());
}

class textformFieldEx extends StatefulWidget {
  const textformFieldEx({super.key});

  @override
  State<textformFieldEx> createState() => _textformFieldExState();
}

class _textformFieldExState extends State<textformFieldEx> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight:30,
          title: Text('TextForm validation'),
          backgroundColor: Colors.yellowAccent,
          foregroundColor: Colors.red,
          centerTitle: true,
        ),
      ),
    );
  }
}
