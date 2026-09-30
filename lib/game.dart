import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  const new({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('images/b1.jpg')),
      ),
      
    );
  }
}

