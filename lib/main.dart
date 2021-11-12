import 'package:flutter/material.dart';

import 'util/home_page.dart';
//import 'package:firebase_core/firebase_core.dart';

void main() async {
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //   home: LoginPage(),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        // "/home": (context) => LoginPage(),
        // "/home": (context) => HomePage(),
        //MyRoutes.homeRoute: (context) => HomePage(),
        // MyRoutes.loginRoute: (context) => LoginPage(),
        //MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
