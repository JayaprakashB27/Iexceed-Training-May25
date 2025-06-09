import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 👤 Profile Screen
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen")),
      body: Center(
        child: ElevatedButton(
          child: Text("Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// ⚙️ Settings Screen
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings Screen")),
      body: Center(
        child: ElevatedButton(
          child: Text("Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat here'),centerTitle: true,),
      body:Center(
        child: ElevatedButton(
           onPressed: () {
             Navigator.pop(context);
            },
          child: Text('go out',style: TextStyle(backgroundColor: Colors.orange,height:2,fontSize: 25
          ),),
        )
      )
    );
  }
}
