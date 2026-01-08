import 'package:flutter/material.dart';
import 'package:new_project/views/artist_lar2screen.dart';
import 'package:new_project/views/artist_lar3screen.dart';
import 'package:new_project/views/artist_lar4screen.dart';
import 'package:new_project/views/artist_lar5screen.dart';
import 'package:new_project/views/artist_lar6screen.dart';
import 'package:new_project/views/artist_lar7screen.dart';
import 'package:new_project/views/artist_larscreen1.dart';
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
      theme: ThemeData(fontFamily: "Sora"),
  
  debugShowCheckedModeBanner: false,
    
      home:
      ArtistLar7screen()
      // TagRecognizedScreen()
      // ScanningScreen()
      // ReadyToScanScreen()
    );
  }
}

