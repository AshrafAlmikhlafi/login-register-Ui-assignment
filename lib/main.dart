import 'package:flutter/material.dart';
import 'package:joinassignment/Screens/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(
        primaryColor: Color(-13405953),
        scaffoldBackgroundColor:Colors.white ,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:LoginScreen(),
    );
  }
}
