import 'package:flutter/material.dart';
import 'package:my_first/boy.dart';
import 'package:my_first/girl.dart';

class Gamehub extends StatefulWidget {
  const new({super.key});

  @override
  State<Gamehub> createState() => _GamehubState();
}

class _GamehubState extends State<Gamehub> {

  final List games1 = [
      {"img":"images/GameHub/g5.jpg",'name':'The Kiling Antidote'},
    {"img":"images/GameHub/g1.jpg",'name':'Assassin Creed Black Flag'}
  ];
  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GameHub'),backgroundColor: Colors.blueGrey,elevation: 0,),
          body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),itemCount: games1.length, itemBuilder: (context,index){
      return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Gameh(games1[index]['name'])));
        },
        child: Container(color: Colors.grey,child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(games1[index]['img'],height: 100,),
          Text(games1[index]['name'])
        ],),
        )
        
      );
      
    }),
    
    
    );
  }
}

class Gameh extends StatefulWidget {
  final String name;
  Gameh(this.name,{super.key});

  @override
  State<Gameh> createState() => _GamehState();
}

class _GamehState extends State<Gameh> {
    final Map<String,Widget> game = {
    'The Kiling Antidote':Girl(),
    'Assassin Creed Black Flag':Boy()
  };
  @override
    void initState(){
    super.initState();
    Future.delayed(Duration.zero,(){
      goo();
    });

    
  }
  void goo(){
    if(game.containsKey(widget.name)){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => game[widget.name]!));
    };
  }
  Widget build(BuildContext context) {
    return Scaffold();
  }
}