import 'package:flutter/material.dart';
class Persons extends StatefulWidget {
  const new({super.key});

  @override
  State<Persons> createState() => _PersonsState();
}

class _PersonsState extends State<Persons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('images/b2.jpg')),
      ),
      
    );
  }
}
