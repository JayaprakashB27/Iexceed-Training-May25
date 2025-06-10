import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(materialEx());
}

class materialEx extends StatelessWidget {
  const materialEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Home(),

        theme:ThemeData(scaffoldBackgroundColor: Colors.redAccent),
        debugShowCheckedModeBanner:false
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(height: 150,width:double.infinity,color: Colors.greenAccent,)),
    );
  }
}
