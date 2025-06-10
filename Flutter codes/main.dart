import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(demoFlutter());
}


class demoFlutter extends StatelessWidget {
  const demoFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              "Container example",
              style: TextStyle(color: Colors.white),
            ),
          ),

         body: Container(
          padding: EdgeInsets.all(90),
             color: Colors.green,
             child: const Text(
               "Hello! I am inside a container!",
               style: TextStyle(fontSize: 20,
                   color: Colors.red,
               ),
             ),
            ),
          ),
        );
        //    (body: Stack(children: [Container(width: 400,height: 400,color:Colors.red),Container(width: 100,height: 100,color:Colors.green)],),));
  }
}
