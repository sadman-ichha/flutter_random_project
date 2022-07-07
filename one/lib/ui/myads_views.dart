import 'package:flutter/material.dart';

class myadsview extends StatefulWidget {
  const myadsview({Key? key}) : super(key: key);

  @override
  State<myadsview> createState() => _myadsviewState();
}

class _myadsviewState extends State<myadsview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 50.0,
            crossAxisSpacing: 6.0,
            childAspectRatio: 0.78,
          ),
          itemCount: 2,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: EdgeInsets.only(top: 30.0),
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
                        padding: EdgeInsets.only(bottom: 15.5),
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
    );
  }
}
