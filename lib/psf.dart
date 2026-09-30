import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Foot1 extends StatefulWidget {
  const new({super.key});

  @override
  State<Foot1> createState() => _Foot1State();
}
void openLink(String url)async{

  final uri = Uri.parse(url);
  await launchUrl(uri,mode: LaunchMode.externalApplication);
}


class _Foot1State extends State<Foot1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
              child: ListView(
        scrollDirection: Axis.vertical,
        children:<Widget>[
          Container(
            height: 1000.0,
            margin: EdgeInsets.all(10.0)
            ,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                          Container(
            height: 500.0,
            width: 500.0,
            
            child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/ps2/f2.jpg'),fit: BoxFit.cover)
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 500.0,
            width: 500.0,  
            child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/ps2/f3.jpg'),fit: BoxFit.cover)
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 500.0,
            width: 500.0,  
            child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/ps2/f4.jpg'),fit: BoxFit.cover)
                  ),
                )
              ],
            ),
          )

              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              openLink('https://www.mediafire.com/file/y24mdd866urbizc/SLES_556.73.PES2026-World_Cup_Edition_WDf.iso/file');
            },
            child: Image.asset('images/psp/d1.jpg',height: 200,),
          )

      

        ],
        
        
        
      ),
      
      ),
    );
  }
}