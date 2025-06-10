import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
   runApp(DividerEx());
}

class DividerEx extends StatelessWidget {
  const DividerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: Row(
        //   children: [
        //     Container(height:100,width:30,color: Colors.yellowAccent),
        //     VerticalDivider(color: Colors.redAccent,width: 5,thickness: 5,indent:20,endIndent: 30, ),
        //     Container(height:100,width:30,color:Colors.blueGrey),
        //   ],
        // ),
        body: Column(
          children: [
            Container(height:100,width:360,color: Colors.yellowAccent),
            Divider(color: Colors.redAccent,height: 5,thickness: 5,indent:20,endIndent: 30,),
            Container(height:100,width:36
                0,color:Colors.blueGrey)
          ],
        ),
      ),
    );
  }
}
