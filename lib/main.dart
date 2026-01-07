import 'package:flutter/material.dart';
import 'package:new_project/views/readytoscan_screen.dart';
import 'package:new_project/views/scaning_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Sora"),
  
  debugShowCheckedModeBanner: false,
    
      home:ScanningScreen()
    );
  }
}

