import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ContainerEx());
}


class ContainerEx extends StatelessWidget {
  const ContainerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(

        ),
        body: Center(
          child: Container(
            child: Text('Container',style:TextStyle(fontSize: 23),),
            height: 300,
            width: 300,
            // color: Colors.red,
            
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(2),
              border:Border.all(color:Colors.yellowAccent,width:10),
            ),
            
            // margin:EdgeInsets.all(100),
            // padding:EdgeInsets.symmetric(horizontal: 43,vertical: 65),
            // transform:Matrix4.rotationX(20),
            // transform:Matrix4.rotationY(50),
            // transform:Matrix4.rotationZ(0.1),
            // transformAlignment:AlignmentGeometry.xy(1,2),
          ),
        ),
      ),
    );
  }
}
