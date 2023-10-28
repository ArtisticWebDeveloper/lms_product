// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;
//    static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//       static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(' Programming Star ', style: TextStyle(color: Colors.black)),
//       iconTheme: IconThemeData(color: Colors.black),
//       ),
//       body: Center(
//         child: _widgetOptions[_selectedIndex]
//       ),
//       drawer: Drawer(
//         child:ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue
//                 ),
//               child: Text('Drawer'),
//             ),
//             ListTile(
//               selected: _selectedIndex ==0,

//               title: Text('Home'),
//               onTap: () {
//                 _onItemTapped(0);
//                 Navigator.pop(context);
//               }
//             ),
//           ]
//           ) 
//         ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView()
      ),
      appBar: AppBar(
        title: Text('Programming Star', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color(0xFFF5F6CE),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/Programming Star.png"),
                fit: BoxFit.cover,
                
              ),
              ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 24)),
          Card(
            margin: EdgeInsets.only(top: 8, bottom: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blueGrey[900], radius: 20, 
              child: Image.asset(
                "assets/book.avif")) ,
                title: Text('Coding for Beginners'),  
                subtitle: Text('Learn to code in a fun way!'),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey
                ) , onPressed: () {}),
              )
            )
        ])
      )
    );
  }
}