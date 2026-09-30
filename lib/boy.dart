import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Boy extends StatefulWidget {
  const new({super.key});

  @override
  State<Boy> createState() => _BoyState();
}
void openLink(String url)async{

  final uri = Uri.parse(url);
  await launchUrl(uri,mode: LaunchMode.externalApplication);
}


class _BoyState extends State<Boy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    image: DecorationImage(image: AssetImage('images/GameHub/g2.jpg'),fit: BoxFit.cover)
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
                    image: DecorationImage(image: AssetImage('images/GameHub/g3.jpg'),fit: BoxFit.cover)
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
                    image: DecorationImage(image: AssetImage('images/GameHub/g4.jpg'),fit: BoxFit.cover)
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
              openLink('https://www.mediafire.com/file/cjs655s0tdtz5wr/AC4_-_Black_Flag_%2528Www.ApunKaGames.Biz%2529.rar/file');
            },
            child: Image.asset('images/psp/d1.jpg',height: 200,),
          )

      

        ],
        
        
        
      ),
      
      ),
    );
  }
}