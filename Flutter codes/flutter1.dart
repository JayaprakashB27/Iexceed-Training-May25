import 'package:flutter/material.dart';

void main() {
  runApp( FirstOne());
}

class FirstOne extends StatelessWidget {
  const FirstOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("User  Details"),
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.red,
        ),
    body: ListView(

    children: const <Widget>[
   ListTile(
      iconColor: Colors.red,
   leading: Icon(Icons.person),
    title: Text('Jayaprakash B'),
    subtitle: Text('Email: jayaprakash@gmail.com'),
    trailing: Icon(Icons.arrow_forward),
    ),
      ListTile(
        iconColor: Colors.red,
        leading: Icon(Icons.person),
        title: Text('Kushal kumar'),
        subtitle: Text('Email: kushalkumar@gmail.com'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        iconColor: Colors.red,
        leading: Icon(Icons.person),
        title: Text('Nikhil sanjay'),
        subtitle: Text('Email: nikhilsanjay@gmail.com'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        iconColor: Colors.red,
        leading: Icon(Icons.person),
        title: Text('vivin '),
        subtitle: Text('Email: vivin@gmail.com'),
        trailing: Icon(Icons.arrow_forward),
      ),
      ListTile(
        iconColor: Colors.red,
        leading: Icon(Icons.person),
        title: Text( 'sanjay'),
        subtitle: Text('Email:sanjay@gmail.com'),
        trailing: Icon(Icons.arrow_forward),
      )
     ] )
      )
    );
  }
}