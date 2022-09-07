// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:myapp/pages/donate_prayer.dart';
import 'package:myapp/pages/home_griedview.dart';
import 'package:myapp/pages/home_slider.dart';
import 'package:myapp/widget/drawer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
        title: Text("Happy Thoughts"),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(
            Icons.notifications_active_rounded,
            size: 35,
          ),
          SizedBox(
            width: 25,
          ),
          CircleAvatar(),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(initialScrollOffset: 15.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            HomeSlider(),
            SizedBox(
              height: 10,
            ),
            Container(
              //color: Colors.amber,
              height: 70,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFFFFFF),
                  suffixIcon: Icon(Icons.search, color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  hintText: ' Search',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Explore",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            HomeGriedView(),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Donate Your Prayer",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            DonatePrayer()
          ],
        ),
      ),
    );
  }
}
