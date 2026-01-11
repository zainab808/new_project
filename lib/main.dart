import 'package:flutter/material.dart';
import 'package:new_project/controller/provider/artistprofileprovider.dart';
import 'package:new_project/views/artist_9screen.dart';

import 'package:new_project/views/artist_screeen3.dart';

import 'package:new_project/views/all_info_screen.dart';
import 'package:new_project/views/artist_screen2.dart';
import 'package:new_project/views/nowtrendingscreen';
import 'package:new_project/views/songs_screen.dart';
import 'package:new_project/views/album_screen.dart';
import 'package:new_project/views/merch_screen.dart' hide Artist6ProfileScreen;
import 'package:new_project/views/about_screen.dart';
import 'package:new_project/views/artist_screen8.dart';
import 'package:new_project/views/readytoscan_screen.dart';
import 'package:new_project/views/scaning_screen.dart';
import 'package:new_project/views/tag_recognization_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
                ChangeNotifierProvider(
          create: (_) => ArtistProfileProvider(),
        ),

      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: "Display"),
        
        debugShowCheckedModeBanner: false,
      
        home:
        // NowTrendingScreen()
        // Artist9screen()
        ArtistProfileScreen()
      
      //  ArtistProfileScreen()
      // ArtistVic8screen()
        // TagRecognizedScreen()
        // ScanningScreen()
        // ReadyToScanScreen()
      ),
    );
  }
}

