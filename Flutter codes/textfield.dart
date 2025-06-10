import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(TextfieldEx());
}

class TextfieldEx extends StatelessWidget {
  const TextfieldEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field Examle'),
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: Colors.lightGreen,
        ),
        body: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            children: [
              TextField(
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontFamily: 'sansserif',
                ),
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username",
                    hintText: "jayaprakash ",
           //         border: UnderlineInputBorder(),
                  border: UnderlineInputBorder(borderRadius: BorderRadius.circular(100)),
                  fillColor: Colors.blueAccent,
                  filled: true,
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontFamily: 'sansserif',
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_rounded),
                  labelText: "Password :",
                  hintText: "12345678",
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
          ),
        ),
      );
  }
}
