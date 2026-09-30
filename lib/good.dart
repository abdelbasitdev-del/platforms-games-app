import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Goodh extends StatefulWidget {
  const new({super.key});

  @override
  State<Goodh> createState() => _GoodhState();
}
void openLink(String url)async{

  final uri = Uri.parse(url);
  await launchUrl(uri,mode: LaunchMode.externalApplication);
}


class _GoodhState extends State<Goodh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(' efootball 2026 '),),
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
                    image: DecorationImage(image: AssetImage('images/psp/f6.jpg'),fit: BoxFit.cover)
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
                    image: DecorationImage(image: AssetImage('images/psp/f7.jpg'),fit: BoxFit.cover)
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
                    image: DecorationImage(image: AssetImage('images/psp/f8.jpg'),fit: BoxFit.cover)
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
              openLink('https://www.mediafire.com/file/jedzc4u332k3w41/eFootball_2026_StaR_Mod_V.3_By_Lasso_Nar._Bambino_Pons_%2528BETA%2529.iso/file');
            },
            child: Image.asset('images/psp/d1.jpg',height: 200,),
          )

      

        ],
        
        
        
      ),
      
      
      
    
    ),
    );
  }
}