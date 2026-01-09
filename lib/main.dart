import 'package:flutter/material.dart';
import 'package:new_project/views/artist_9screen.dart';

import 'package:new_project/views/artist_screeen3.dart';

import 'package:new_project/views/artist_screen1.dart';
import 'package:new_project/views/artist_screen2.dart';
import 'package:new_project/views/artist_screen4.dart';
import 'package:new_project/views/artist_screen5.dart';
import 'package:new_project/views/artist_screen6.dart';
import 'package:new_project/views/artist_screen7.dart';
import 'package:new_project/views/artist_screen8.dart';
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
      theme: ThemeData(fontFamily: "Display"),
  
  debugShowCheckedModeBanner: false,
    
      home:
      Artist9screen()
    //  ArtistProfileScreen()
    // ArtistVic8screen()
      // TagRecognizedScreen()
      // ScanningScreen()
      // ReadyToScanScreen()
    );
  }
}

