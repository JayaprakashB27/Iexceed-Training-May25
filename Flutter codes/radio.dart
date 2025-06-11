import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(RadioEx());
}

class RadioEx extends StatefulWidget {
  const RadioEx({super.key});

  @override
  State<RadioEx> createState() => _RadioExState();
}

class _RadioExState extends State<RadioEx> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RadioPage(),);
  }
}

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(

         ),
         body: Row(
           children: [

              Radio(value: 1, groupValue:1, onChanged:null),Text('Java'),
             Radio(value: 2, groupValue:2, onChanged: null),Text('C'),
             Radio(value: 3, groupValue:1, onChanged: null),Text('C++'),
           ],
         ),
       ),
    );
  }
}

