import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SplashScreen1());
}

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AppBar(
          title: Text('Welcome to this page Bro',textAlign: TextAlign.left,maxLines: 3,),
        ),

      ),
         );
  }
}
