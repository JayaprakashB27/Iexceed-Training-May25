import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(PaddingWidgetEx());
}

class PaddingWidgetEx extends StatelessWidget {
  const PaddingWidgetEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: Card(
            child: Padding(
              // padding: const EdgeInsets.all(100.0),
              // padding: EdgeInsets.symmetric(horizontal: 80,vertical: 100),
              // padding: EdgeInsets.fromLTRB(35,50 ,54,60),
              // padding: EdgeInsets.zero,
              // padding: EdgeInsets.only(),
              padding: EdgeInsetsDirectional.fromSTEB(30, 90, 60, 50),
              child: Text('I-Exceed',style:TextStyle(fontSize:25)),
            ),
          ),
        ),
      ),
    );
  }
}
