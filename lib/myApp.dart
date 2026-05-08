import 'package:flutter/material.dart';

import 'Home.dart';



class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyanAccent,
        appBarTheme: AppBarTheme(
          color: Colors.cyanAccent,

          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.white))),
      title:"Songit Boss",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

