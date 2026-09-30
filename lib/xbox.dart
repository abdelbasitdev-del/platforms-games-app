import 'package:flutter/material.dart';
import 'package:my_first/ben10.dart';
import 'package:my_first/naruto.dart';
import 'package:my_first/san.dart';



class Xbox extends StatefulWidget {
  const new({super.key});

  @override
  State<Xbox> createState() => _XboxState();
}

class _XboxState extends State<Xbox> {
   final List games1 = [
      {"img":"images/Xbox/x9.jpg",'name':'Grand San'},
    {"img":"images/Xbox/x1.jpg",'name':'Naruto'},
    {"img":"images/Xbox/x5.jpg",'name':'Ben10'}
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Xbox 360 Mobile'),backgroundColor: Colors.blueGrey,elevation: 0,),
          body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),itemCount: games1.length, itemBuilder: (context,index){
      return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => xbo(games1[index]['name'])));
        },
        child: Container(color: Colors.grey,child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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





class xbo extends StatefulWidget {
  final String name;
  xbo(this.name,{super.key});

  @override
  State<xbo> createState() => _xboState();
}

class _xboState extends State<xbo> {
   final Map<String,Widget> game = {
    'Grand San':San(),
    'Naruto':Naruto(),
    'Ben10' :Ben10()
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