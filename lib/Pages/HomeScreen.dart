    import 'package:flutter/material.dart';

class HomeScreen  extends StatelessWidget {
  //const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
       child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'WhatsApp',
              style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(padding: EdgeInsets.only(top:12, right:15),
              child: Icon(
                Icons.search,
                size: 28,
              ),
              ),
              PopupMenuButton(
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text("New Group", style: TextStyle(fontSize: 14),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Linked devices", style: TextStyle(fontSize: 14),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text("Labels", style: TextStyle(fontSize: 14),
                    ),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text("Starred message", style: TextStyle(fontSize: 14),
                    ),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text("Settings", style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              )
            ]
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight:4 ,
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                    width: 25,
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      child:Row(children: [
                        Text("CHATS"),
                        SizedBox(width: 8,),
                        Container(
                          alignment: Alignment.center,
                          // padding: EdgeInsets.all(5),
                          height: 22, 
                          width: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Text(
                            "10",
                            style: TextStyle(
                              color: Color(0xFF075E55),
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],)
                      ),
                  ),
                  Container(
                    width: 85,
                    child: Tab(child: Text("STATUS"),),
                  ),
                  Container(
                    width: 85,
                    child: Tab(child: Text("CALLS"),),
                  )
                ],
              ),
            ),
            Flexible( flex: 1,
              child: TabBarView(
                children: [
                  // tab 1
                  Container(color: Colors.black,),
                  
                  // tab 2
                  Container(color: Colors.black,),
                  // tab 3
                  Container(color: Colors.black,),
                  // tab 4
                  Container(color: Colors.black,),
                ],
                )
                )
          ]
        ),
       ),
       );
  }
}