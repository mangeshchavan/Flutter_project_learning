import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String name = "Mangesh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Happy Thoughts"),
      ),
      body: Center(child: Container(child: Text("Welcome To TGF $name"))),
      drawer: Drawer(),
    );
  }
}
