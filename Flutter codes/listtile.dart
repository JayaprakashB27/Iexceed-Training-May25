import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ListtileEx());
}

class ListtileEx extends StatelessWidget {
  const ListtileEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.limeAccent,
        drawer: Drawer(

        ),
        appBar: AppBar(
          title: Text('Listview'),
          backgroundColor: Colors.purpleAccent,
          foregroundColor: CupertinoColors.white,
          centerTitle: true,
          toolbarHeight: 90,
        ),
        body: Container(
          height: double.infinity,
          width: 1000,
          margin: EdgeInsets.only(top:20),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Jayaprakash B'),subtitle: Text('Software Developer'),
                trailing:Icon(Icons.verified_user_sharp),
              //  contentPadding: EdgeInsets.all(2), // it gives space for t b l r
                // iconColor: Colors.pink,
                horizontalTitleGap: 100,
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
                tileColor: Colors.grey,
                hoverColor: Colors.yellowAccent,
              ),
              SizedBox(height: 10),
              ListTile(
                leading: CircleAvatar(child: Text("v"),),
                title: Text('Venkatramanan M'),subtitle: Text('Tester'),
                trailing:Icon(Icons.verified_user_sharp),
                horizontalTitleGap: 100,
                tileColor: Colors.greenAccent,
                 //       contentPadding: EdgeInsets.only(bottom:0),
                // dense: false,
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
              ),
              SizedBox(height: 10),
              ListTile(
                // leading: Icon(Icons.person),
                leading: CircleAvatar(child:Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo-LZDRAYCAyC-Pd1h6bqPUxar125C-s__VQ&s'))),
                  title: Text('Barath kumar R M'),subtitle: Text('Full Stack Developer'),
                trailing:Icon(Icons.verified_user_sharp),
                 tileColor: Colors.grey,
                horizontalTitleGap: 100,
              //  isThreeLine: true,
             //   contentPadding: EdgeInsets.all(2),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Kishorevarshan S'),subtitle: Text('Data Engineer'),
                trailing:Icon(Icons.verified_user_sharp),
                tileColor: Colors.greenAccent,
                  horizontalTitleGap: 100,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
                onTap:() {
                  print('This is kishorevarshan 1');
                },
                onLongPress: () {
                  print('This is kishorevarshan 2');
                }
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Govindaram R'),subtitle: Text('Software Developer'),
                trailing:Icon(Icons.verified_user_sharp),
                horizontalTitleGap: 100,
                enabled: false,
                tileColor: Colors.grey,
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Dinesh S'),subtitle: Text('Tester'),
                trailing:Icon(Icons.verified_user_sharp),
                horizontalTitleGap: 100,
                textColor: Colors.red,
                tileColor: Colors.greenAccent,
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
