import 'package:flutter/material.dart';


class ArtistScreen8 extends StatelessWidget {
  const ArtistScreen8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
  body: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;

          // Sample albums list
          final albums = [
            'assets/jack3.png',
            'assets/jack3.png',
            'assets/jack3.png',
            'assets/jack3.png',
            'assets/jack3.png',
            'assets/jack3.png',
          ];

          return Stack(
            children: [
              /// Background
              Container(
                width: w,
                height: h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/play.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              /// Overlay
              Container(
                width: w,
                height: h,
                color: Colors.black.withOpacity(0.55),
              ),

          ],
          );
        },
      ),
   
    );
  }
}