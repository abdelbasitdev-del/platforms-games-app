import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class San extends StatefulWidget {
  const new({super.key});

  @override
  State<San> createState() => _SanState();
}

void openLink(String url)async{

  final uri = Uri.parse(url);
  await launchUrl(uri,mode: LaunchMode.externalApplication);
}

class _SanState extends State<San> {
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
                    image: DecorationImage(image: AssetImage('images/Xbox/x10.jpg'),fit: BoxFit.cover)
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
                    image: DecorationImage(image: AssetImage('images/Xbox/x11.jpg'),fit: BoxFit.cover)
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
                    image: DecorationImage(image: AssetImage('images/Xbox/x12.jpg'),fit: BoxFit.cover)
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
              openLink('https://romsfun.com/download/grand-theft-auto-san-andreas-5-96846/1');
            },
            child: Image.asset('images/psp/d1.jpg',height: 200,),
          )

      

        ],
        
        
        
      ),
      
      ),
    );
  }
}