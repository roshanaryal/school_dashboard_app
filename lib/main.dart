import 'package:flutter/material.dart';
import 'package:dash_board_app/home_screen.dart';

void main()=> runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard App flutter",
      home: HomeScreen(),

    );
  }
}
