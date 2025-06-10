import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ExpandedExample());
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.lightGreenAccent,
      home: Scaffold(
        body: Container(
          child: Text('Its your Turn'),height: double.infinity,width: double.infinity,color:Colors.orange,
        ),
       appBar: AppBar(
         title: Text("Hello"),
       ),
        drawer:Drawer(
          child: Text('one'),
        ),
      ),
    );
  }
}
