import 'package:flutter/material.dart';
import 'package:my_first/game.dart';
import 'package:my_first/myfor.dart';
import 'package:my_first/person.dart';



class Myscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Myscreen> createState() => _MyscreenState();
}

class _MyscreenState extends State<Myscreen> {
  int _currentIndex = 0;
  final List _pages = [
    Games(),Persons(),Myfors()
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('بابو برمجة'),
      actions: [
        IconButton(
          icon:Icon(Icons.notifications),
          onPressed: () {
            
          },
          
        )
      ],
      leading: IconButton(
        icon: Icon(Icons.location_on),
        onPressed: () {
          
        },
      ),
    
      ),
      body: _pages[_currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            
          });
        },
        
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.games),
          label: 'games'
          
          
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: 'person'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: 'settting'
          )
        

        
        ],
        ),
      

    );
  }
}











