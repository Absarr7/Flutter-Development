import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homePage.dart';
import 'package:flutter_application_1/screens/LoginPage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Playing With Themes:-
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      // Playing with routes:-
      initialRoute: "/login",
      routes: {
        "/": (context) => login(),
        "/home": (context) => homePage(),
        "/login": (context) => login(),
      },
    );
  }
}

brinVegetables({int rupees = 100}) {
  // take cycle
  // go to sector 16
  // buy vegetables.
}
