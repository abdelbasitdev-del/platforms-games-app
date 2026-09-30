import 'package:flutter/material.dart';

class Abd extends StatefulWidget {
  const new({super.key});

  @override
  State<Abd> createState() => _AbdState();
}

class _AbdState extends State<Abd> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}
class Page extends StatefulWidget {
  const new({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,
      title: Text('login')),
      body: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: 'email'),)
        ],
      ),
    );
  }
}
