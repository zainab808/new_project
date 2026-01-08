import 'package:flutter/material.dart';


class ArtistLar8screen extends StatelessWidget {
  const ArtistLar8screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
  body: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;

          // Sample albums list
       

          return Stack(
            children: [
              /// Background
              Container(
                width: w,
                height: h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/lac5.png'),
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