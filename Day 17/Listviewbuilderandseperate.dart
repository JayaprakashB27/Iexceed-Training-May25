import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView Examples')),
        body: const TabBarViewExample(),
      ),
    );
  }
}

class TabBarViewExample extends StatelessWidget {
  const TabBarViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'ItemBuilder'),
              Tab(text: 'Separated'),
            ],
          ),
          Expanded(
            child: const TabBarView(
              children: [
                ListViewBuilderExample(),
                ListViewSeparatedExample(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  final List<String> items = const [
    'Apple', 'Banana', 'Orange', 'Grapes', 'Mango'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(items[index]));
      },
    );
  }
}

class ListViewSeparatedExample extends StatelessWidget {
  const ListViewSeparatedExample({super.key});

  final List<String> items = const [
    'Apple', 'Banana', 'Orange', 'Grapes', 'Mango'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        return ListTile(title: Text(items[index]));
      },
    );
  }
}