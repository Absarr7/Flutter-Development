import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Challenge!"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to the 30 Days flutter challenge."),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
