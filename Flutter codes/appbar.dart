import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(demoappbar());
}

class demoappbar extends StatelessWidget {
  const demoappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            title: Text('WELCOME'),
          ),
          body: Center(child: Text('Hello World')),

          backgroundColor:Colors.grey,
        )
    );

  }
}
