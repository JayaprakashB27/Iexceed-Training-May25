import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor:CupertinoColors.systemGrey3,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 250,
              width: 650,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=800&q=80'
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              right: 160,
              child: Center(
                child: Transform.scale(
                  scale: 1.5,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipOval(
                      child: Align(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage('assets/Jayaprakash_photo.jpg'),
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                ),
              ),
            ),
            ),
            Positioned(
              left: 30,
              top:330,
              right: 50,
              bottom: -500,
                child: Container(
                  child: Text("\nJayaprakash B \nSoftware Developer \nb.jayaprakash@i-exceed.com  \n9469496356"),height: 70,width: 500,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
