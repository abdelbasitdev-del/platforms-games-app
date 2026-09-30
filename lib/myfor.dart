


import 'package:flutter/material.dart';
import 'package:my_first/psp.dart';
import 'package:my_first/rating.dart';
import 'package:my_first/win.dart';
class Myfors extends StatefulWidget {
  const new({super.key});

  @override
  State<Myfors> createState() => _MyforsState();
}

class _MyforsState extends State<Myfors> {
  final List<Map> cot = [
    {'name':'ppsspp','img':'images/b2.jpg'},
    {'name':'winlator','img':'images/b3.jpg'},
    {'name':'xbox','img':'images/b4.jpg'},
    {'name':'gethub','img':'images/b1.jpg'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,title: Text('game')),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemCount: cot.length,itemBuilder: (context,index){
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pa(cot[index]['name'])));
          },
        child: Container(
          child: Column(children: [Image.asset(cot[index]['img'],height: 200,),
          Text(cot[index]['name'])
          ],),
          
        ),
        );
        
      }
      
      ),
    );
  }


}
class Pa extends StatefulWidget {
  final String name;
  const Pa(this.name,{super.key});

  @override
  State<Pa> createState() => _PaState();
}

class _PaState extends State<Pa> {
  final Map<String, Widget> games = {
    "ppsspp" :Ppsspp() ,
    "winlator" : Myrat()

  };

  
  
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration.zero,(){
      goTo();
    });
  }
  void goTo(){
    if(games.containsKey(widget.name)){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => games[widget.name]!),);

    }
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,title: Text(widget.name),leading: BackButton(),),
    );
  }
}


