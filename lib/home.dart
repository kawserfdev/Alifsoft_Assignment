import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  List<String> categories = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
    "Book's"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assignment',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alifsoft',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF967969)),
              ),
              Text(
                "Let’s gets something?",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 120,
                width: double.maxFinite,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Container(
                    height: 120,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xFFF46D38),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "40% Off During\nCovid 19",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              "assets/vegetable.png",
                              width: 95,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xFF3861F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "40% Off During\nCovid 19",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              "assets/vegetable.png",
                              width: 95,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xFF3861F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "40% Off During\nCovid 19",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'assets/vegetable.png',
                              width: 95,
                            ),
                          )
                        ]),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      "view all",
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF999999),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 10),
                              child: Center(child: Text(categories[index])),
                            )),
                      );
                    }),
              ),
              Container(
                height: 1000,
                child: GridView.builder(
                  itemCount: 15,
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (_, index) {
                    return Card(
                      elevation: 5,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.0,
                                      spreadRadius: 0,
                                      offset: Offset(0, 5)),
                                  BoxShadow(offset: Offset(0, 5)),
                                ]),
                            child: Column(
                              children: [
                                Positioned(
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
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
