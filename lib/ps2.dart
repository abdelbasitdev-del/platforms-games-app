import 'package:flutter/material.dart';
import 'package:my_first/psf.dart';
import 'package:my_first/psf2.dart';

class Ps2 extends StatefulWidget {
  const new({super.key});

   

  @override


  State<Ps2> createState() => _Ps2State();
}

class _Ps2State extends State<Ps2> {
  
  final List games1 = [
      {"img":"images/ps2/f5.jpg","url":"https://www.google.com",'name':'Efootball pes 2026'},
    {"img":"images/ps2/f1.webp","url":"https://www.youtube.com",'name':'Efootball 26 pes'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Playstation 2'),backgroundColor: Colors.blueGrey,elevation: 0,),
          body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),itemCount: games1.length, itemBuilder: (context,index){
      return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Ps(games1[index]['name'])));
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


class Ps extends StatefulWidget {
  final String name;
  Ps(this.name,{super.key});


  @override
  State<Ps> createState() => _PsState();
}
  final Map<String,Widget> game = {
    'Efootball pes 2026':Foot2(),
    'Efootball 26 pes':Foot1()
  };
class _PsState extends State<Ps> {
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