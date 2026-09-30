import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Girl extends StatefulWidget {
  const new({super.key});

  @override
  State<Girl> createState() => _GirlState();
}
void openLink(String url)async{

  final uri = Uri.parse(url);
  await launchUrl(uri,mode: LaunchMode.externalApplication);
}

class _GirlState extends State<Girl> {
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
                    image: DecorationImage(image: AssetImage('images/GameHub/g6.jpg'),fit: BoxFit.cover)
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
                    image: DecorationImage(image: AssetImage('images/GameHub/g7.jpg'),fit: BoxFit.cover)
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
                    image: DecorationImage(image: AssetImage('images/GameHub/g8.jpg'),fit: BoxFit.cover)
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
              openLink('https://www.mediafire.com/file/2ge8vw9069r5y6e/The.Killing.Antidote.v0.5.2.2.zip/file');
            },
            child: Image.asset('images/psp/d1.jpg',height: 200,),
          )

      

        ],
        
        
        
      ),
      
      
      ),
    );
  }
}