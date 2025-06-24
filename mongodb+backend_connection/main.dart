import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ECommerceApp());
}


class ECommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mongodb connection'),
          centerTitle: true,

        ),
        drawer: Drawer(),

      ),
    );

  }
}
