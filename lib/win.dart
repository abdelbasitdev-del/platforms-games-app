import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Winlator extends StatefulWidget {
  const new({super.key});

  @override
  State<Winlator> createState() => _WinlatorState();
}

class _WinlatorState extends State<Winlator> {
  final List wingames = [
    {'img':'images/b2.jpg','url':'https://www.google.com','name':'goodhand'},
    {'img':'images/b4.jpg','url':'https://www.youtube.com','name':'football'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20), itemCount: wingames.length,itemBuilder: (context,index){
        return InkWell(
          onTap: () => launchUrl(Uri.parse(wingames[index]['url'])),
          child: Card(child: Image.asset(wingames[index]['img']),),
          
        );
      }),)
    );
  }
}
