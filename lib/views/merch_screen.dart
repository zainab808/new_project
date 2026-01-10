


import 'package:flutter/material.dart';
import 'package:new_project/components/episode.dart' show BuildTag;
import 'package:new_project/components/tabs_row.dart';
import 'package:new_project/views/artist_screeen3.dart';
import 'package:new_project/views/all_info_screen.dart';
import 'package:new_project/views/artist_screen2.dart';
import 'package:new_project/views/songs_screen.dart';
import 'package:new_project/views/album_screen.dart';
import 'package:new_project/views/about_screen.dart';

class Artist6ProfileScreen extends StatelessWidget {
  const Artist6ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;

          // Sample albums list
          final albums = [
            'assets/jack1.png',
            'assets/jack2.png',
            'assets/jack1.png',
            'assets/jack2.png',
            'assets/jack1.png',
            'assets/jack2.png',
          ];

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

              /// Overlay
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
                        padding: EdgeInsets.symmetric(horizontal: w * 0.06),
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
                                  color: Colors.black.withOpacity(0.15),
                                ),
                              ),
                              /// Top right back button
                              Positioned(
                                top: 14,
                                right: 14,
                                child: GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage('assets/right_icon.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              /// Name & followers
                              Positioned(
                                left: 16,
                                bottom: 16,
                                right: 16,
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
                                      "15.5 million followers",
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

                      /// 🔘 ACTION ROW
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                        child: Row(
                          children: [
                            _imageBtn('assets/jack.png'),
                            const SizedBox(width: 12),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            _imageBtn('assets/more.png'),
                            const SizedBox(width: 20),
                            _imageBtn('assets/shuffle.png'),
                            const SizedBox(width: 20),
                            _imageBtn('assets/vector.png'),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),

                      /// Latest Track Row
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Container(
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.06),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: const [
                              Image(image: AssetImage("assets/Rectangle.png")),
                              SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  "Check out the latest track",
                                  style: TextStyle(fontSize: 15, color: Colors.white),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
                            ],
                          ),
                        ),
                      ),

                      /// Tabs
                   CustomTabsRow(
  selectedIndex: 3,
  tabs: ["All", "Songs", "Album", "Merch", "About"],
  screens: [
    ArtistProfileScreen(),
    Artist4ProfileScreen(),
    Artist5ProfileScreen(),
    Artist6ProfileScreen(),
    Artist7ProfileScreen(),
  ],
),

                      const SizedBox(height: 18),

                      /// 🔹 Albums Title
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Merch",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                      const SizedBox(height: 14),

                      /// 🔹 Albums Grid
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: albums.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // 2 albums per row
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 120 / 140,
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

  /// IMAGE BUTTON
  Widget _imageBtn(String asset) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}











// // /// ---------------- TABS ----------------

// class _TabsRow extends StatelessWidget {
//   const _TabsRow();

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       physics: const BouncingScrollPhysics(),
//       padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
//       child: Row(
//         children: [
//           _tab("All", isActive: false),
//           const SizedBox(width: 10),
//           _tab("Songs", isActive: false),
//           const SizedBox(width: 10),
//           _tab("Album", isActive: false), // Album tab is active
//           const SizedBox(width: 10),
//           _tab("Merch", isActive: true),
//           const SizedBox(width: 10),
//           _tab("About", isActive: false),
//         ],
//       ),
//     );
//   }

//   Widget _tab(String text, {required bool isActive}) {
//     return InkWell(
//       onTap: () {},
//       splashColor: Colors.transparent,
//       highlightColor: Colors.transparent,
//       child: BuildTag(
//         text: text,
//         bgColor: isActive ? Colors.white : Colors.white.withOpacity(0.06),
//         textColor: isActive ? Colors.black : Colors.white,
//       ),
//     );
//   }
// }


/// ================= TABS =================
/// ================= TABS =================

