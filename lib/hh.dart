import"package:flutter/material.dart";
class Hhh extends StatefulWidget {
  const new({super.key});

  @override
  State<Hhh> createState() => _HhhState();
}

class _HhhState extends State<Hhh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('hello word'),

      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children:<Widget> [
            ListTile(
              
              
            ),
            Container(
              height: 300.0,
              width: 300.0,
              
              
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                              Container(
              height: 100.0,
              width: 100.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/b1.jpg'),
                      fit: BoxFit.cover
                      
                      ),
                      
                    )
                  )
                ],
              ),
            ),
                Container(
              height: 100.0,
              width: 100.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/b1.jpg'),
                      fit: BoxFit.cover
                      ),
                      
                    )
                  )
                ],
              ),
            ),
                                          Container(
              height: 100.0,
              width: 100.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/b1.jpg'),
                      fit: BoxFit.cover
                      ),
                      
                    )
                  )
                ],
              ),
            ),
                                          Container(
              height: 100.0,
              width: 100.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/b1.jpg'),
                      fit: BoxFit.cover
                      ),
                      
                    )
                  )
                ],
              ),
            ),
                                          Container(
              height: 100.0,
              width: 100.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/b1.jpg'),
                      fit: BoxFit.cover
                      ),
                      
                    )
                  )
                ],
              ),
            ),
            
            
            

                ],
              ),
            ),
                        

          ],
        ),
      ),
      
    );
  }
}