import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Myrat extends StatefulWidget {
  const new({super.key});

  @override
  State<Myrat> createState() => _MyratState();
}

class _MyratState extends State<Myrat> {
  double myrat = 0;
  TextEditingController mytext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('your value'),),
      body: Padding(padding: EdgeInsets.all(25),
      child: Column(children: [
        Text('how many', style: TextStyle(fontSize: 16),),
        SizedBox(height: 20,),
        RatingBar(initialRating: myrat,minRating: 3,ratingWidget:RatingWidget(full: Icon(Icons.star,color: Colors.amber,),
         half:Icon(Icons.star_half,color: Colors.amber,), 
         empty:Icon(Icons.star_border,color: Colors.amber,) ) ,itemCount: 5, onRatingUpdate: (score){
          setState(() {
            myrat = score;
          });;
        }),
        SizedBox(height: 20,),
        TextField(
          controller: mytext,
          decoration: InputDecoration(
            labelText: 'write',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
          
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          
          if(myrat == 0){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('use the star')));
            return;
          }
          FirebaseFirestore.instance.collection('REVIEWS').add({
            'starts':myrat,
            'comment':mytext.text,
            'time':FieldValue.serverTimestamp(),
          });
          setState(() {
            myrat = 0;
            
          });
          mytext.clear();


            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('thank you'))
            );
            
          },
          child: Text('send'),
          
          
          ),
          SizedBox(height: 20,),
                    Column(
            children: [
              StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('REVIEWS').snapshots(),
               builder: ((context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting){return CircularProgressIndicator();}
                if(!snapshot.hasData || snapshot.data!.docs.isEmpty){
                  return Text(' its empty');
                }
                return ListView.builder(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  var doc = snapshot.data!.docs[index];
                  var data = doc.data() as Map<String , dynamic>;

                  
                  return Card(
                    child: ListTile(
                      leading: Text("${data['stars']?? 0}"), 
                      title: Text(data['comment']?? 0),         ),
                  );
                },
                );
               }))
            ],
          )
          
          
    
        
        
        
      ],),
      
      ),
      
    );
  }
  
}




