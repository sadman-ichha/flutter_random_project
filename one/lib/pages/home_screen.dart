// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> _Categories = [
    'Food',
    'Fruits',
    'Eletronics',
    'Groceries',
    'Dress',
    'Glasses',
    'Fashion',
    'Camera',
    'Laptop',
    'Phone'
        'Watch'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (_, ctx) {
            return [
              SliverAppBar(
                collapsedHeight: 350.0,
                expandedHeight: 350.0,
                backgroundColor: Colors.white,
                flexibleSpace: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello Folks",
                              style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Let's gets something?",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4C4C),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    height: 128.0,
                                    width: 252.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF46D38),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '40% off During\nEid Uh Adha',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.0),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Image.asset(
                                                "assets/fruits.png",
                                                width: 105.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Container(
                                    height: 128.0,
                                    width: 252.0,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '40% off During\nEid Uh Adha',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 15.0),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Image.asset(
                                                "assets/fruits.png",
                                                width: 105.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Container(
                                    height: 128.0,
                                    width: 252.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            '40% off During\nEid Uh Adha',
                                            style: const TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15.0),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Image.asset(
                                                "assets/fruits.png",
                                                width: 105.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Top Categories',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: const Text(
                                    'View All',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            Container(
                                height: 40,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _Categories.length,
                                  itemBuilder: (_, index) {
                                    return Padding(
                                      padding: EdgeInsets.only(right: 6.0),
                                      child: Container(
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15.0),
                                          ),
                                          color: Colors.grey,
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                right: 10.0, left: 10.0),
                                            child: Text(_Categories[index]),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                )),
                          ]),
                    )
                  ],
                ),
              ),
            ];
          },
          body: Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 50.0,
                  crossAxisSpacing: 6.0,
                  childAspectRatio: 0.78,
                ),
                itemCount: 10,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 28.0),
                    child: Card(
                      elevation: 3.0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: -20.0,
                            child: Image.asset(
                              "assets/watch.png",
                              height: 145.0,
                              width: 165.0,
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 20.5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Apple Watch",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "Series 6. Red",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF868686),
                                    ),
                                  ),
                                  SizedBox(height: 3.5),
                                  Text(
                                    "\$ 369",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF5956E9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
