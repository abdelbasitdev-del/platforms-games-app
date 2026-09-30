import 'package:flutter/material.dart';
import 'package:my_first/foot.dart';
import 'package:my_first/good.dart';
class Psp extends StatefulWidget {
  const new({super.key});

  @override
  State<Psp> createState() => _PspState();
}

class _PspState extends State<Psp> {
  final List games1 = [
      {"img":"images/psp/f5.png",'name':'efootball 2026'},
    {"img":"images/psp/f1.jpg",'name':'football fc 26'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(title: Text('ppsspp'),backgroundColor: Colors.blueGrey,elevation: 0,),
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),itemCount: games1.length, itemBuilder: (context,index){
      return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Hell(games1[index]['name'])));
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


class Hell extends StatefulWidget {
  final String name;
  Hell(this.name,{super.key});

  @override
  State<Hell> createState() => _HellState();
}

class _HellState extends State<Hell> {
  final Map<String,Widget> game = {
    'efootball 2026':Goodh(),
    'football fc 26':Footb()
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
    return Scaffold(appBar: AppBar(title: Text('hello good'),),
    
    
    
    
    );
  }
}