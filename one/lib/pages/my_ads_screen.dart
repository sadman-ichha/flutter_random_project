// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:one/ui/myfavorites.dart';

import '../ui/myads_views.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({Key? key}) : super(key: key);

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'My Ads',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 23.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black87,
            indicatorColor: Colors.black87,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                text: 'My Ads',
              ),
              Tab(
                icon: Icon(Icons.favorite_border),
                text: 'My Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          myadsview(),
          myfavorite(),
        ]),
      ),
    );
  }
}
