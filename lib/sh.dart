

import 'package:flutter/material.dart';
import 'package:my_first/gamehub.dart';
import 'package:my_first/ps2.dart';
import 'package:my_first/psp1.dart';

import 'package:my_first/xbox.dart';


class Sha extends StatefulWidget {
  

  @override
  State<Sha> createState() => _ShaState();

}

class _ShaState extends State<Sha> {

    final List<Map> hello = [
    {'name':'PPSSPP','img':'images/c33.png'},
    {'name':'Xbox 360 Mobile', 'img':'images/c2.jpg'},
    {'name':'plystation2','img':'images/c3.jpg'},
    {'name':'GameHub','img':'images/c7.jpg'},
    {'name':'plystation3','img':'images/c4.jpg'},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(backgroundColor: Colors.blue,title: Text('PLATFORMS GAMES',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 40,mainAxisSpacing: 40),itemCount: hello.length, itemBuilder: (context,index){
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Sti(hello[index]['name'])));
            
          },
          child: Container(color: Colors.grey,child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [Image.asset(hello[index]['img'],height: 100,),
          Text(hello[index]['name']),
          ],
          
          ),
          
          ),
        );
      }
      ),
      drawer: Drawer(
        child: Container(
          child: Column(children: [
            Image.asset('images/b1.jpg'),
            SizedBox(height: 20,),
            Text('EMAIL :  Abdelbasit.dev@gmail.com',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text('WATSAP PHONE : +249961281628',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            ],),
        ),
      ),
      
    );
  }
}


class Sti extends StatefulWidget {
  final String name;
  const Sti(this.name);

  @override
  State<Sti> createState() => _StiState();
}

class _StiState extends State<Sti> {
  final Map<String,Widget> games ={
    'PPSSPP':Psp(),
    'plystation2' : Ps2(),
    'Xbox 360 Mobile' : Xbox(),
    'GameHub' : Gamehub()
  };
  
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration.zero,(){
      go();


    });
    
    
    
  }
  void go(){
    if(games.containsKey(widget.name)){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (_) => games[widget.name]! ) );
    }

    

  }
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blueGrey,leading: BackButton(),title: Text(widget.name),),
  
    );
    
  }
}

