import 'package:flutter/material.dart';
import 'package:new_project/views/artist_screeen3.dart';

import 'package:new_project/views/artist_screen1.dart';
import 'package:new_project/views/artist_screen2.dart';
import 'package:new_project/views/artist_screen4.dart';
import 'package:new_project/views/artist_screen5.dart';

import 'package:new_project/views/readytoscan_screen.dart';
import 'package:new_project/views/scaning_screen.dart';
import 'package:new_project/views/tag_recognization_screen.dart';


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
    
      home:
      Artist5ProfileScreen()
      // TagRecognizedScreen()
      // ScanningScreen()
      // ReadyToScanScreen()
    );
  }
}

