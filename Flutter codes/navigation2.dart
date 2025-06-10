import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(NavigatorEx2());
}

class NavigatorEx2 extends StatelessWidget {
  const NavigatorEx2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: CupertinoColors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: CupertinoColors.activeOrange,
          title: ListTile(
              // leading: Icon(Icons.food_bank),
             contentPadding: EdgeInsetsGeometry.only(top: 60,bottom: 60,left: 500),
              title:Text(' Bank Of India'),
              subtitle: Text('Save your money with us'),
            ),
          ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF062481),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB-LymyScqLuK8nsUfr-eBSXB8hS1dyh2rcTvYpSoS0saWVopeWU-ngeHghYyQaWLcQ8I&usqp=CAU'),
                    ),
                    SizedBox(height: 20),
                    Text('Hi, Jayaprakash',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text('Customer ID: XXXXXX436',
                        style: TextStyle(color: Colors.white70, fontSize: 12)),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashboard'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Accounts'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.swap_horiz),
                title: Text('Transactions'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.support_agent),
                title: Text('Support'),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text('Logout', style: TextStyle(color: Colors.red)),
                onTap: () {
                  // print('You are logged out successfully!);
                },
              ),
            ],
          ),
        ),

    body: Padding(
      padding: EdgeInsets.all(70),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                 child: Column(
                   children: [
                     Expanded(
                       child: Row(
                         children: [
                           Expanded(
                             child: Card(
                               color: CupertinoColors.activeOrange,
                               child:Center(child: Text('Transactions')),
                             ),
                           ),
                           SizedBox(width: 60),
                           Expanded(
                             child: Card(
                               color: CupertinoColors.activeOrange,
                               child: Center(child: Text('History')),
                             ),
                           ),
                         ],
                       ),
                     ),
                     SizedBox(height: 50),
                     Expanded(
                       child: Row(
                         children: [
                           Expanded(
                             child: Card(
                               color: CupertinoColors.activeOrange,
                               child: Center(child: Text('Check balance')),
                             ),
                           ),
                           SizedBox(width: 250),
                           Expanded(
                             child: Card(
                               color: CupertinoColors.activeOrange,
                               child: Center(child: Text('Bank Transfer')),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
            ),
            SizedBox(width: 110),
            Expanded(
              flex: 1,
              child: Card(
                child: Container(
                  height: double.infinity,
                  color: CupertinoColors.activeOrange,
                  child: Center(child: Text('Accounts & updates')),
                ),
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
