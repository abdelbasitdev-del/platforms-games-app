import 'package:flutter/material.dart';
// مهم لفتح الروابط

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: GamesScreen(),
    );
  }
}

// الشاشة الاولى: الفئات
class GamesScreen extends StatefulWidget {
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  int _currentIndex = 1;

  final List<Map> categories = [
    {'name': 'Winlator', 'games': 24, 'icon': 'https://picsum.photos/100?random=10'},
    {'name': 'GameHub', 'games': 25, 'icon': 'https://picsum.photos/100?random=11'},
    {'name': 'PPSSPP', 'games': 3, 'icon': 'https://picsum.photos/100?random=12'},
    {'name': 'Xbox 360 Mobile', 'games': 7, 'icon': 'https://picsum.photos/100?random=13'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Games', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search a category...',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none)
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(12),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // هنا بس تنقل للشاشة التانية
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CategoryScreen(categories[index]['name']))
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[900], borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(15),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Image.network(categories[index]['icon'], height: 50, errorBuilder: (_,__,___)=>Icon(Icons.image)),
                      Spacer(),
                      Text(categories[index]['name'], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('${categories[index]['games']} games', style: TextStyle(color: Colors.grey)),
                    ]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){ setState(()=>_currentIndex = index); },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: 'Discussion'),
          BottomNavigationBarItem(icon: Icon(Icons.games), label: 'Games'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: 'Alerts'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

// الشاشة التانية: الالعاب
class CategoryScreen extends StatelessWidget {
  final String categoryName;
  CategoryScreen(this.categoryName);

  // ضفت رابط لكل لعبة
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryName), leading: BackButton()),
      
    );
  }
}

