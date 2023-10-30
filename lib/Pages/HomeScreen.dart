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
import 'package:lms_product/constants/constants.dart';
import 'package:lms_product/utils/bottom_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    var courseList = constants.list;
    var advCourseList = constants.newArrivals;
    return Scaffold(
        appBar: AppBar(
          title: Text('Programming Star',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins')),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          automaticallyImplyLeading: false,
        ),
        drawerScrimColor: Colors.black,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(children: [
              Container(
                  height: MediaQuery.of(context).size.width * 0.5,
                  child: ListView.builder(
                      itemCount: courseList.length,
                      itemBuilder: (context, index) {
                        return getProductCard(context, courseList[index]);
                      })),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Advance Level Learning",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w100),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'More',
                            style: TextStyle(
                              color: Colors.blue[800],
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 190,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: advCourseList.length,
                      itemBuilder: (context, index) {
                        return getAdvanceCourse(context, advCourseList[index]);
                      }),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Biginner Level Learning",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'More',
                            style: TextStyle(
                              color: Colors.blue[800],
                              fontFamily: 'Poppins',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],

                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 190,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: advCourseList.length,
                      itemBuilder: (context, index) {
                        return getAdvanceCourse(context, advCourseList[index]);
                      }),
                ),
              ),

            ]
            ),
          ),
        ),
        bottomNavigationBar: BottomMenu(selectedIndex: _currentIndex));
  }
}

getProductCard(BuildContext context, course) {
  return InkWell(
    onTap: () {
      print(course.name);
      // Navigator.push(
      //     context,
      // MaterialPageRoute(
      // builder: (BuildContext context) => ProductDetailsView(product)));
    },
    child: Card(
      color: Colors.white,
      shadowColor: Color.fromARGB(255, 129, 123, 123),
      elevation: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 170,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(
                '${course.image}',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "${course.rating}",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
      ),
    ),
    )
  );
}

getAdvanceCourse(BuildContext context, Advcourse) {
  return InkWell(
    onTap: () {
      print(Advcourse.name);
      // Navigator.push(
      //     context,
      // MaterialPageRoute(
      // builder: (BuildContext context) => ProductDetailsView(product)));
    },
    child: Card(
      color: Colors.white,
      shadowColor: Color.fromARGB(255, 129, 123, 123),
      elevation: 5.0,
      child: Column(
        children: [
          Container(
          height: MediaQuery.of(context).size.width * 0.4,
            width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage('${Advcourse.image}'),
              fit: BoxFit.cover)
          ),
          child: Container(
            alignment: Alignment.bottomRight,
            child: Text('${Advcourse.rating}',style: TextStyle(fontSize: 14, color: Colors.white)
            ),
            )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('${Advcourse.name}', style: TextStyle(color: Colors.black,fontSize: 12),),
            ],
          ),
        ],
      ),
    ),
  );
  
}
