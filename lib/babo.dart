import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_first/dream.dart';
import 'package:my_first/screen.dart';


class Babo extends StatefulWidget {
  const new({super.key});

  @override
  
  State<Babo> createState() => _BaboState();
}

class _BaboState extends State<Babo> {
  final email = TextEditingController();
  final password = TextEditingController();
  final auth = FirebaseAuth.instance;
  void log () async{
    try{
      await auth.createUserWithEmailAndPassword(email: email.text, password: password.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('good')));
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Myscreen() ));
    }catch (a){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(a.toString())));
    }
    
  }

   void logg () async{
    try{
      await auth.signInWithEmailAndPassword(email: email.text, password: password.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('goodgood')));

    }catch (a){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(a.toString())));
    }
    
  }
  void sinn (){
    runApp(Abd());
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('hello world'),
      ),
      body:Column(
       
        
        children: [
          
          
            TextField(controller: email,decoration: InputDecoration(labelText: 'gmail'),
            ),
            
            TextField(controller: password,decoration: InputDecoration(labelText: 'password'),
            ),
            
            SizedBox(height: 30),
            ElevatedButton(onPressed: log, child:Text('go')),
            ElevatedButton(onPressed: logg, child: Text('go go')),
            SizedBox(height: 30),
            ElevatedButton(onPressed:  sinn, child: Text('sign up'))
          
          
        ],
        ),

      );
      
      
      
    

} }

