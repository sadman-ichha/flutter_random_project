import 'package:flutter/material.dart';

class myfavorite extends StatefulWidget {
  const myfavorite({Key? key}) : super(key: key);

  @override
  State<myfavorite> createState() => _myfavoriteState();
}

class _myfavoriteState extends State<myfavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(13.0),
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (_, index) {
              return Card(
                elevation: 3,
                color: Colors.white,
                child: ListTile(
                  title: Text('Apple Watch',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      )),
                  subtitle: Text(
                    'Series 6. Red',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  trailing: Text(
                    "\$ 369",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white70,
                    child: Image.asset("assets/watch.png"),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
