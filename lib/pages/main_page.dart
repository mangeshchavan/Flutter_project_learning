// ignore_for_file: prefer_const_constructors, dead_code, use_key_in_widget_constructors, deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widget/drawer.dart';
import 'package:shimmer/shimmer.dart';

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
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Builder(
                builder: (context) {
                  return CarouselSlider(
                    options: CarouselOptions(
                      autoPlayInterval: Duration(seconds: 10),
                      autoPlay: true,
                      height: 250,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                    ),
                    items: [
                      Image.network(
                        "https://staging.api.happythoughts.in/assets/930383d2-3110-4f33-8504-4895f6b79bf2",
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                          "https://staging.api.happythoughts.in/assets/930383d2-3110-4f33-8504-4895f6b79bf2"),
                      Image.network(
                          "https://staging.api.happythoughts.in/assets/930383d2-3110-4f33-8504-4895f6b79bf2"),
                      Image.network(
                          "https://staging.api.happythoughts.in/assets/930383d2-3110-4f33-8504-4895f6b79bf2"),
                      Image.network(
                          "https://staging.api.happythoughts.in/assets/930383d2-3110-4f33-8504-4895f6b79bf2"),
                    ],
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.amber,
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      prefixIcon: Icon(Icons.search, color: Colors.blue),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      hintText: ' Search',
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Explore",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                height: double.maxFinite,
                color: Colors.amber,
                child: Column(
                  children: [
                    HomePanel(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    List<String> data = <String>[
      "Programs",
      "Intensive Seekers",
      "Health",
      "Yoga",
      "Meditation",
      "Donation"
    ];
    List<RaisedButton> myWidgets = data.map((item) {
      return RaisedButton(child: Text(item), onPressed: () async {});
    }).toList();
    GridView myGrid = GridView.count(crossAxisCount: 3, children: myWidgets);

    return Container(
        height: height * 0.3,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: myGrid);
  }
}
