import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RadiolisttileEx());
}

class RadiolisttileEx extends StatefulWidget {
  const RadiolisttileEx({super.key});

  @override
  State<RadiolisttileEx> createState() => _RadiolisttileExState();
}

class _RadiolisttileExState extends State<RadiolisttileEx> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("RadioListTile Example")),
        drawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              RadioListTile(
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
                title:  Text("Option 1"),
                subtitle: Text("This is the first option."),
              ),
              RadioListTile(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
                title:  Text("Option 2"),
                subtitle:  Text("This is the second option."),
              ),
              RadioListTile(
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
                title:  Text("Option 3"),
                subtitle:  Text("This is the third option."),
              ),
              RadioListTile(
                value: 4,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
                title: Text("Option 4"),
                subtitle: Text("This is the fourth option."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
