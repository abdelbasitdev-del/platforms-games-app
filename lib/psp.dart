import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Ppsspp extends StatefulWidget {
  const new({super.key});

  @override
  State<Ppsspp> createState() => _PpssppState();
}

class _PpssppState extends State<Ppsspp> {
  final List games = [
    {"img":"images/b1.jpg","url":"https://www.google.com",'name':'goodhand'},
    {"img":"images/b2.jpg","url":"https://www.youtube.com",'name':'football'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 60,mainAxisSpacing: 20),
      itemCount: games.length,
       itemBuilder: (context,index){
        return InkWell(
          onTap: () => launchUrl(Uri.parse(games[index]["url"])),
          child: Container(color: Colors.grey,child: Column(children: [
            Image.asset(games[index]['img'],height: 100,),
            Text(games[index]['name'],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
          ],),)
          
        );
        
      }),),
    );
  }
}
