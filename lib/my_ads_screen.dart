import 'package:flutter/material.dart';

class My_Ads_Screen extends StatelessWidget {
  const My_Ads_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('My Ads'),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 30,
              ),
              text: 'My Ads',
            ),
            Tab(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 30,
              ),
              text: "My favourits",
            )
          ]),
        ),
        body: TabBarView(children: [
          Container(
            height: 1000,
            child: GridView.builder(
              itemCount: 15,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (_, index) {
                return Card(
                  elevation: 5,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFC0C0C0),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  spreadRadius: 0,
                                  offset: Offset(0, 5)),
                              BoxShadow(offset: Offset(0, 5)),
                            ]),
                      ),
                      Column(
                        children: [
                          Positioned(
                            top: 50,
                            left: 50,
                            child: ClipOval(
                              child: Image.asset(
                                "assets/applewatch.png",
                                width: 100,
                              ),
                            ),
                          ),
                          Text(
                            'Apple Watch',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Series 6 . Red',
                            style: TextStyle(color: Color(0xFF808080)),
                          ),
                          Text(
                            '\$359',
                            style: TextStyle(color: Colors.purple),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(
                        'assets/applewatch.png',
                        width: 50,
                      ),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6 . Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(
                        'assets/applewatch.png',
                        width: 50,
                      ),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6 . Red'),
                    trailing: Text("\$350"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(
                        'assets/applewatch.png',
                        width: 50,
                      ),
                    ),
                    title: Text('Apple Watch'),
                    subtitle: Text('Series 6 . Red'),
                    trailing: Text("\$350"),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
