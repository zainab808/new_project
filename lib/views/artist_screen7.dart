


// import 'package:flutter/material.dart';
// import 'package:new_project/components/episode.dart' show BuildTag;
// import 'package:new_project/components/tabs_row.dart';
// import 'package:new_project/views/artist_screeen3.dart';
// import 'package:new_project/views/artist_screen1.dart';
// import 'package:new_project/views/artist_screen2.dart';
// import 'package:new_project/views/artist_screen4.dart';
// import 'package:new_project/views/artist_screen5.dart';

// class Artist7ProfileScreen extends StatelessWidget {
//   const Artist7ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           final w = constraints.maxWidth;
//           final h = constraints.maxHeight;

          // // Sample albums list
          // final albums = [
          //   'assets/jack3.png',
           
          // ];

//           return Stack(
//             children: [
//               /// Background
//               Container(
//                 width: w,
//                 height: h,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/background.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),

//               /// Overlay
//               Container(
//                 width: w,
//                 height: h,
//                 color: Colors.black.withOpacity(0.55),
//               ),

//               SafeArea(
//                 child: SingleChildScrollView(
//                   physics: const BouncingScrollPhysics(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(height: 16),

//                       /// ARTIST IMAGE CARD
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 15),
//                         child: AspectRatio(
//                           aspectRatio: 1,
//                           child: Stack(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(24),
//                                   image: const DecorationImage(
//                                     image: AssetImage('assets/artist4.png'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(24),
//                                   color: Colors.black.withOpacity(0.15),
//                                 ),
//                               ),
//                               /// Top right back button
//                               Positioned(
//                                 top: 14,
//                                 right: 14,
//                                 child: GestureDetector(
//                                   onTap: () => Navigator.pop(context),
//                                   child: Container(
//                                     width: 40,
//                                     height: 40,
//                                     decoration: const BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       image: DecorationImage(
//                                         image: AssetImage('assets/right_icon.png'),
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               /// Name & followers
//                               Positioned(
//                                 left: 16,
//                                 bottom: 16,
//                                 right: 16,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: const [
//                                     Text(
//                                       "Russ",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 22,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     ),
//                                     SizedBox(height: 4),
//                                     Text(
//                                       "15.5 million followers",
//                                       style: TextStyle(
//                                         color: Colors.white70,
//                                         fontSize: 13,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 20),

//                       /// 🔘 ACTION ROW
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: w * 0.06),
//                         child: Row(
//                           children: [
//                             _imageBtn('assets/jack.png'),
//                             const SizedBox(width: 12),
//                             InkWell(
//                               onTap: () {},
//                               child: Container(
//                                 padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(30),
//                                 ),
//                                 child: const Text(
//                                   "Follow",
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const Spacer(),
//                             _imageBtn('assets/more.png'),
//                             const SizedBox(width: 20),
//                             _imageBtn('assets/shuffle.png'),
//                             const SizedBox(width: 20),
//                             _imageBtn('assets/vector.png'),
//                           ],
//                         ),
//                       ),

//                       const SizedBox(height: 10),

//                       /// Latest Track Row
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                         child: Container(
//                           height: 40,
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.06),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: Row(
//                             children: const [
//                               Image(image: AssetImage("assets/Rectangle.png")),
//                               SizedBox(width: 12),
//                               Expanded(
//                                 child: Text(
//                                   "Check out the latest track",
//                                   style: TextStyle(fontSize: 15, color: Colors.white),
//                                 ),
//                               ),
//                               Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
//                             ],
//                           ),
//                         ),
//                       ),

//                       /// Tabs
//                         CustomTabsRow(
//   selectedIndex: 4,
//   tabs: ["All", "Songs", "Album", "Merch", "About"],
//   screens: [
//     ArtistProfileScreen(),
//     Artist3ProfileScreen(),
//     Artist2ProfileScreen(),
//     Artist4ProfileScreen(),
//     Artist7ProfileScreen(),
//   ],
// ),

//                       const SizedBox(height: 18),

//                       /// 🔹 Albums Title
//                       const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Text(
//                           "About",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 14),

                      // /// 🔹 Albums Grid
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 16),
                      //   child: GridView.builder(
                      //     physics: const NeverScrollableScrollPhysics(),
                      //     shrinkWrap: true,
                      //     itemCount: albums.length,
                      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 1, // 2 albums per row
                      //       crossAxisSpacing: 12,
                      //       mainAxisSpacing: 12,
                      //       childAspectRatio: 120 / 80,
                      //     ),
                      //     itemBuilder: (context, index) {
                      //       final album = albums[index];
                      //       return ClipRRect(
                      //         borderRadius: BorderRadius.circular(16),
                      //         child: Image.asset(
                      //           album,
                      //           fit: BoxFit.cover,
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),

//                       const SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   /// IMAGE BUTTON
//   Widget _imageBtn(String asset) {
//     return Container(
//       width: 30,
//       height: 30,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         image: DecorationImage(
//           image: AssetImage(asset),
//           fit: BoxFit.fill,
//         ),
//       ),
//     );
//   }
// }











// // // /// ---------------- TABS ----------------


// /// ================= TABS =================
// /// ================= TABS =================











import 'package:flutter/material.dart';
import 'package:new_project/components/tabs_row.dart';
import 'package:new_project/views/artist_screeen3.dart';
import 'package:new_project/views/artist_screen5.dart';
import 'package:new_project/views/artist_screen6.dart';
import 'artist_screen1.dart';
import 'artist_screen2.dart';
import 'artist_screen4.dart';

class Artist7ProfileScreen extends StatelessWidget {
  const Artist7ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
       // Sample albums list
          final albums = [
            'assets/jack3.png',
           
          ];
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;

          return Stack(
            children: [
              /// Background
              Container(
                width: w,
                height: h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              /// Dark Overlay
              Container(
                width: w,
                height: h,
                color: Colors.black.withOpacity(0.55),
              ),

              SafeArea(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),

                      /// ARTIST IMAGE CARD
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/artist4.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),

                              /// Back Button
                              Positioned(
                                top: 14,
                                right: 14,
                                child: GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage('assets/right_icon.png'),
                                  ),
                                ),
                              ),

                              /// Name & Followers
                              Positioned(
                                left: 16,
                                bottom: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Russ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "15,564,970 Followers",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// ACTION ROW
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                        child: Row(
                          children: [
                            _circleImg('assets/jack.png'),
                            const SizedBox(width: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Text(
                                "Follow",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Spacer(),
                            _circleImg('assets/more.png'),
                            const SizedBox(width: 16),
                            _circleImg('assets/shuffle.png'),
                            const SizedBox(width: 16),
                            _circleImg('assets/vector.png'),
                          ],
                        ),
                      ),

                      const SizedBox(height: 12),

                      /// LATEST TRACK
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.06),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: const [
                              Image(
                                image: AssetImage("assets/Rectangle.png"),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  "Check out the latest track",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 18, color: Colors.white),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      /// TABS
                      CustomTabsRow(
                        selectedIndex: 4,
                        tabs: const ["All", "Songs", "Album", "Merch", "About"],
                        screens: const [
                          ArtistProfileScreen(),
                          Artist2ProfileScreen(),
                          Artist5ProfileScreen(),
                          Artist6ProfileScreen(),
                          Artist7ProfileScreen(),
                        ],
                      ),

                      const SizedBox(height: 20),

                      /// ABOUT TITLE
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),
                                          /// 🔹 Albums Grid
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: albums.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1, // 2 albums per row
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 120 / 80,
                          ),
                          itemBuilder: (context, index) {
                            final album = albums[index];
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                album,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 20),

                                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "15,564,970 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                            // height: 1.6,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),


                      /// ABOUT TEXT
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Russell Vitale, professionally known as Russ, "
                          "is an American rapper, singer-songwriter, and producer "
                          "who rose to fame through consistent releases and full creative control. "
                          "Before signing mainstream success, Russ built a massive following "
                          "through years of self-released music. Known for his confidence, honesty, "
                          "and melodic style, he continues to inspire independent artists worldwide.",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.85),
                            fontSize: 14,
                            height: 1.6,
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      /// SOCIAL LINKS
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: const [
                            Icon(Icons.facebook, color: Colors.white),
                            SizedBox(width: 16),
                            Icon(Icons.camera_alt, color: Colors.white),
                            SizedBox(width: 16),
                            Icon(Icons.alternate_email, color: Colors.white),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _circleImg(String asset) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
