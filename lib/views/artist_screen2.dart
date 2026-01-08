// // import 'package:flutter/material.dart';
// // import 'package:new_project/components/episode.dart' show BuildTag;

// // class Artist2ProfileScreen extends StatelessWidget {
// //   const Artist2ProfileScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: LayoutBuilder(
// //         builder: (context, constraints) {
// //           final w = constraints.maxWidth;
// //           final h = constraints.maxHeight;

// //           return Stack(
// //             children: [
// //               /// BACKGROUND
// //               Container(
// //                 width: w,
// //                 height: h,
// //                 decoration: const BoxDecoration(
// //                   image: DecorationImage(
// //                     image: AssetImage('assets/background.jpg'),
// //                     fit: BoxFit.cover,
// //                   ),
// //                 ),
// //               ),

// //               /// DARK OVERLAY
// //               Container(
// //                 width: w,
// //                 height: h,
// //                 color: Colors.black.withOpacity(0.55),
// //               ),

// //               /// MAIN CONTENT
// //               SafeArea(
// //                 child: SingleChildScrollView(
// //                   padding: const EdgeInsets.only(bottom: 110), // space for player
// //                   physics: const BouncingScrollPhysics(),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       const SizedBox(height: 16),

// //                       /// ARTIST CARD
// //                       Padding(
// //                         padding: EdgeInsets.symmetric(horizontal: w * 0.06),
// //                         child: AspectRatio(
// //                           aspectRatio: 1,
// //                           child: Stack(
// //                             children: [
// //                               Container(
// //                                 decoration: BoxDecoration(
// //                                   borderRadius: BorderRadius.circular(24),
// //                                   image: const DecorationImage(
// //                                     image: AssetImage('assets/artist4.png'),
// //                                     fit: BoxFit.cover,
// //                                   ),
// //                                 ),
// //                               ),

// //                               Container(
// //                                 decoration: BoxDecoration(
// //                                   borderRadius: BorderRadius.circular(24),
// //                                   color: Colors.black.withOpacity(0.2),
// //                                 ),
// //                               ),

// //                               /// BACK BUTTON
// //                               Positioned(
// //                                 top: 14,
// //                                 right: 14,
// //                                 child: InkWell(
// //                                   onTap: () => Navigator.pop(context),
// //                                   child: const CircleAvatar(
// //                                     backgroundImage:
// //                                         AssetImage('assets/right_icon.png'),
// //                                     radius: 20,
// //                                   ),
// //                                 ),
// //                               ),

// //                               /// NAME
// //                               const Positioned(
// //                                 left: 16,
// //                                 bottom: 16,
// //                                 right: 16,
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     Text(
// //                                       "Russ",
// //                                       style: TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: 22,
// //                                         fontWeight: FontWeight.w400,
// //                                       ),
// //                                     ),
// //                                     SizedBox(height: 4),
// //                                     Text(
// //                                       "15.5 million followers",
// //                                       style: TextStyle(
// //                                         color: Colors.white70,
// //                                         fontSize: 13,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 20),

// //                       /// ACTION ROW
// //                       Padding(
// //                         padding: EdgeInsets.symmetric(horizontal: w * 0.06),
// //                         child: Row(
// //                           children: [
// //                             _imageBtn('assets/jack.png'),
// //                             const SizedBox(width: 12),

// //                             /// FOLLOW
// //                             Container(
// //                               padding: const EdgeInsets.symmetric(
// //                                   horizontal: 30, vertical: 7),
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(30),
// //                               ),
// //                               child: const Text(
// //                                 "Follow",
// //                                 style: TextStyle(fontWeight: FontWeight.bold),
// //                               ),
// //                             ),

// //                             const Spacer(),
// //                             _imageBtn('assets/more.png'),
// //                             const SizedBox(width: 20),
// //                             _imageBtn('assets/shuffle.png'),
// //                             const SizedBox(width: 20),
// //                             _imageBtn('assets/vector.png'),
// //                           ],
// //                         ),
// //                       ),

// //                       const SizedBox(height: 14),

// //                       /// LATEST TRACK
// //                       Padding(
// //                         padding: const EdgeInsets.symmetric(horizontal: 15),
// //                         child: Container(
// //                           height: 42,
// //                           padding: const EdgeInsets.symmetric(horizontal: 10),
// //                           decoration: BoxDecoration(
// //                             color: Colors.white.withOpacity(0.06),
// //                             borderRadius: BorderRadius.circular(30),
// //                           ),
// //                           child: Row(
// //                             children: const [
// //                               Image(
// //                                   image:
// //                                       AssetImage("assets/Rectangle.png")),
// //                               SizedBox(width: 12),
// //                               Expanded(
// //                                 child: Text(
// //                                   "Check out the latest track",
// //                                   style: TextStyle(
// //                                       color: Colors.white, fontSize: 14),
// //                                 ),
// //                               ),
// //                               Icon(Icons.arrow_forward_ios,
// //                                   size: 18, color: Colors.white),
// //                             ],
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 20),

// //                       /// TABS + SONGS
// //                       Padding(
// //                         padding: const EdgeInsets.all(15),
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             const _TabsRow(),
// //                             const SizedBox(height: 18),

// //                             const Text(
// //                               "Top Songs",
// //                               style: TextStyle(
// //                                 color: Colors.white,
// //                                 fontSize: 18,
// //                                 fontWeight: FontWeight.w400,
// //                               ),
// //                             ),
// //                             const SizedBox(height: 14),

// //                             _songRow(
// //                               image: 'assets/artist2.png',
// //                               title: 'Losin Control',
// //                               subtitle: 'Russ • 88M plays',
// //                             ),
// //                             _songRow(
// //                               image: 'assets/artist1.png',
// //                               title: 'Sanctified',
// //                               subtitle: 'Russ • 204M plays',
// //                             ),
// //                             _songRow(
// //                               image: 'assets/artist1.png',
// //                               title: 'Sanctified',
// //                               subtitle: 'Russ • 204M plays',
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),

// //               /// 🎵 BOTTOM MINI PLAYER
// //               Positioned(
// //                 left: 0,
// //                 right: 0,
// //                 bottom: 0,
// //                 child: SafeArea(child: _miniPlayer()),
// //               ),
// //             ],
// //           );
// //         },
// //       ),
// //     );
// //   }

// //   /// ICON BUTTON
// //   Widget _imageBtn(String asset) {
// //     return Container(
// //       width: 30,
// //       height: 30,
// //       decoration: BoxDecoration(
// //         shape: BoxShape.circle,
// //         image: DecorationImage(image: AssetImage(asset)),
// //       ),
// //     );
// //   }
// // }

// // /// 🎵 MINI PLAYER
// // Widget _miniPlayer() {
// //   return Container(
// //     height: 75,
// //     margin: const EdgeInsets.all(12),
// //     padding: const EdgeInsets.symmetric(horizontal: 12),
// //     decoration: BoxDecoration(
// //       color: const Color(0xff080016),
// //       borderRadius: BorderRadius.circular(18),
// //     ),
// //     child: Row(
// //       children: [
// //         ClipRRect(
// //           borderRadius: BorderRadius.circular(12),
// //           child: Image.asset(
// //             'assets/artist2.png',
// //             width: 50,
// //             height: 50,
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //         const SizedBox(width: 12),

// //         Expanded(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: const [
// //               Text(
// //                 "Losin Control",
// //                 style: TextStyle(
// //                     color: Colors.white, fontWeight: FontWeight.w600),
// //               ),
// //               SizedBox(height: 4),
// //               Text(
// //                 "Russ",
// //                 style: TextStyle(color: Colors.white60, fontSize: 12),
// //               ),
// //             ],
// //           ),
// //         ),

// //         const Icon(Icons.skip_previous, color: Colors.white),
// //         const SizedBox(width: 8),
// //         const Icon(Icons.play_circle_fill,
// //             color: Colors.white, size: 34),
// //         const SizedBox(width: 8),
// //         const Icon(Icons.skip_next, color: Colors.white),
// //       ],
// //     ),
// //   );
// // }

// // /// TABS
// // class _TabsRow extends StatelessWidget {
// //   const _TabsRow();

// //   @override
// //   Widget build(BuildContext context) {
// //     return SingleChildScrollView(
// //       scrollDirection: Axis.horizontal,
// //       child: Row(
// //         children: const [
// //           BuildTag(text: "All", bgColor: Colors.white, textColor: Colors.black),
// //           SizedBox(width: 10),
// //           BuildTag(
// //               text: "Songs",
// //               bgColor: Color.fromRGBO(255, 255, 255, 0.06),
// //               textColor: Colors.white),
// //           SizedBox(width: 10),
// //           BuildTag(
// //               text: "Album",
// //               bgColor: Color.fromRGBO(255, 255, 255, 0.06),
// //               textColor: Colors.white),
// //           SizedBox(width: 10),
// //           BuildTag(
// //               text: "Merch",
// //               bgColor: Color.fromRGBO(255, 255, 255, 0.06),
// //               textColor: Colors.white),
// //           SizedBox(width: 10),
// //           BuildTag(
// //               text: "About",
// //               bgColor: Color.fromRGBO(255, 255, 255, 0.06),
// //               textColor: Colors.white),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // /// SONG ROW
// // Widget _songRow({
// //   required String image,
// //   required String title,
// //   required String subtitle,
// // }) {
// //   return Container(
// //     padding: const EdgeInsets.symmetric(vertical: 10),
// //     child: Row(
// //       children: [
// //         ClipRRect(
// //           borderRadius: BorderRadius.circular(10),
// //           child: Image.asset(image, width: 55, height: 55, fit: BoxFit.cover),
// //         ),
// //         const SizedBox(width: 12),
// //         Expanded(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(title,
// //                   style: const TextStyle(
// //                       color: Colors.white,
// //                       fontWeight: FontWeight.w600)),
// //               const SizedBox(height: 4),
// //               Text(subtitle,
// //                   style: const TextStyle(
// //                       color: Colors.white60, fontSize: 12)),
// //             ],
// //           ),
// //         ),
// //         const Icon(Icons.more_vert, color: Colors.white),
// //       ],
// //     ),
// //   );
// // }




// import 'package:flutter/material.dart';

// /// ---------------- SONG MODEL ----------------
// class Song {
//   final String image;
//   final String title;
//   final String subtitle;

//   Song({
//     required this.image,
//     required this.title,
//     required this.subtitle,
//   });
// }

// /// ---------------- MAIN SCREEN ----------------
// class Artist2ProfileScreen extends StatefulWidget {
//   const Artist2ProfileScreen({super.key});

//   @override
//   State<Artist2ProfileScreen> createState() => _Artist2ProfileScreenState();
// }

// class _Artist2ProfileScreenState extends State<Artist2ProfileScreen> {
//   Song? selectedSong;

//   final List<Song> songs = [
//     Song(
//       image: 'assets/artist2.png',
//       title: 'Losin Control',
//       subtitle: 'Russ • 88M plays',
//     ),
//     Song(
//       image: 'assets/artist1.png',
//       title: 'Sanctified',
//       subtitle: 'Russ • 204M plays',
//     ),
//     Song(
//       image: 'assets/artist1.png',
//       title: 'Best On Earth',
//       subtitle: 'Russ • 150M plays',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           /// BACKGROUND
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/background.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           /// OVERLAY
//           Container(color: Colors.black.withOpacity(0.55)),

//           /// CONTENT
//           SafeArea(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.only(bottom: 120),
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 20),

//                     const Text(
//                       "Top Songs",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),

//                     const SizedBox(height: 16),

//                     /// SONG LIST
//                     ...songs.map(
//                       (song) => _songRow(
//                         song: song,
//                         isSelected:
//                             selectedSong?.title == song.title,
//                         onTap: () {
//                           setState(() {
//                             selectedSong = song;
//                           });
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           /// MINI PLAYER
//           if (selectedSong != null)
//             Positioned(
//               left: 0,
//               right: 0,
//               bottom: 0,
//               child: SafeArea(
//                 child: _miniPlayer(selectedSong!),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

// /// ---------------- SONG ROW ----------------
// Widget _songRow({
//   required Song song,
//   required bool isSelected,
//   required VoidCallback onTap,
// }) {
//   return InkWell(
//     onTap: onTap,
//     child: Container(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         children: [
//           /// IMAGE
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.asset(
//               song.image,
//               width: 55,
//               height: 55,
//               fit: BoxFit.cover,
//             ),
//           ),

//           const SizedBox(width: 12),

//           /// TEXT
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   song.title,
//                   style: TextStyle(
//                     color: isSelected
//                         ? Colors.greenAccent
//                         : Colors.white,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   song.subtitle,
//                   style: const TextStyle(
//                     color: Colors.white60,
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           Icon(
//             Icons.play_arrow,
//             color: isSelected
//                 ? Colors.greenAccent
//                 : Colors.white,
//           ),
//         ],
//       ),
//     ),
//   );
// }

// /// ---------------- MINI PLAYER ----------------
// Widget _miniPlayer(Song song) {
//   return Container(
//     height: 75,
//     margin: const EdgeInsets.all(12),
//     padding: const EdgeInsets.symmetric(horizontal: 12),
//     decoration: BoxDecoration(
//       color: const Color(0xFF1C2236),
//       borderRadius: BorderRadius.circular(18),
//     ),
//     child: Row(
//       children: [
//         /// IMAGE
//         ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Image.asset(
//             song.image,
//             width: 50,
//             height: 50,
//             fit: BoxFit.cover,
//           ),
//         ),

//         const SizedBox(width: 12),

//         /// TEXT
//         Expanded(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 song.title,
//                 style: const TextStyle(
//                   color: Colors.greenAccent,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               const Text(
//                 "Russ",
//                 style: TextStyle(
//                   color: Colors.white60,
//                   fontSize: 12,
//                 ),
//               ),
//             ],
//           ),
//         ),

//         /// CONTROLS
//         const Icon(Icons.skip_previous, color: Colors.white),
//         const SizedBox(width: 8),
//         const Icon(
//           Icons.play_circle_fill,
//           color: Colors.greenAccent,
//           size: 34,
//         ),
//         const SizedBox(width: 8),
//         const Icon(Icons.skip_next, color: Colors.white),
//       ],
//     ),
//   );
// }










import 'package:flutter/material.dart';
import 'package:new_project/components/episode.dart';

/// ---------------- SONG MODEL ----------------
class Song {
  final String image;
  final String title;
  final String subtitle;

  Song({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Song && title == other.title;

  @override
  int get hashCode => title.hashCode;
}

/// ---------------- MAIN SCREEN ----------------
class Artist2ProfileScreen extends StatefulWidget {
   
  const Artist2ProfileScreen({super.key});

  @override
  State<Artist2ProfileScreen> createState() =>
      _Artist2ProfileScreenState();
}

class _Artist2ProfileScreenState
    extends State<Artist2ProfileScreen> {
      
  Song? selectedSong;

  final List<Song> songs = [
    Song(
      image: 'assets/artist1.png',
      title: 'Losin Control',
      subtitle: 'Russ • 88M plays',
    ),
    Song(
      image: 'assets/artist2.png',
      title: 'Sanctified',
      subtitle: 'Russ • 204M plays',
    ),
    Song(
      image: 'assets/artist1.png',
      title: 'Best On Earth',
      subtitle: 'Russ • 150M plays',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body:
       
       Stack(
        children: [
          
          /// BACKGROUND IMAGE
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// DARK OVERLAY
          Container(color: Colors.black.withOpacity(0.6)),

          /// MAIN CONTENT
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 130),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  /// ---------- TOP ARTIST SECTION ----------
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [

                  Padding(
                        padding: EdgeInsets.symmetric(horizontal:10),
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

                              /// Top right image
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
                                        image: AssetImage(
                                            'assets/right_icon.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              /// Name
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

                      /// 🔘 ACTION ROW (ALL IMAGES)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            /// image BEFORE follow
                            InkWell(
                              onTap: (){},
                              
                              
                              child:
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/jack.png"))
                                ),

                              )),
                              //  _imageBtn('assets/jack.png')),

                            const SizedBox(width: 12),

                            /// Follow button
                            InkWell(
                              onTap: (){},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 7),
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

                            // const SizedBox(width: 12),
                            Spacer(),
                            
                            /// shuffle image
                            InkWell(
                              onTap: (){},
                              
                              child: _imageBtn('assets/more.png')),
                            const SizedBox(width: 20),


                            /// shuffle image
                            InkWell(
                              onTap: (){},
                              child: _imageBtn('assets/shuffle.png')),

                            const SizedBox(width: 20),

                            /// play image
                            InkWell(
                              onTap: (){},
                              child: _imageBtn('assets/vector.png')),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Container(
                      height: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(

                          color:  Colors.white.withOpacity(0.06),
                      // color: const Color(0xFF2A3352),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: const [
                        Image(image: AssetImage("assets/Rectangle.png")),
                        // Icon(Icons.play_circle_fill, size: 40),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "Check out the latest track",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,size: 20, color: Colors.white),
                      ],
                    ),
                                    ),
                  ),
SizedBox(height: 10,),
                    const _TabsRow(),



                 ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// ---------- TOP SONGS ----------
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16),
                    child: 
                   const Text(
        "Top Songs",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
                  ),

                  const SizedBox(height: 12),

                  /// SONG LIST
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16),
                    child: Column(
                      children: songs
                          .map(
                            (song) => _songTile(
                              song: song,
                              isSelected:
                                  selectedSong == song,
                              onTap: () {
                                setState(() {
                                  selectedSong = song;
                                });
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// ---------- MINI PLAYER ----------
          if (selectedSong != null)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SafeArea(
                child:
                    _miniPlayer(selectedSong!),
              ),
            ),
        ],
      ),
    );
  }
}

/// ---------------- ACTION BUTTON ----------------
Widget _actionButton(String text) {
  return Container(
    padding:
        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.white),
    ),
    child: Text(
      text,
      style: const TextStyle(color: Colors.white),
    ),
  );
}

/// ---------------- SONG TILE ----------------
Widget _songTile({
  required Song song,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(8),
            child: Image.asset(
              song.image,
              width: 55,
              height: 55,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  song.title,
                  style: TextStyle(
                    color: isSelected
                        ? Colors.white // ✅ ONLY HERE
                        : Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  song.subtitle,
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.play_arrow,
              color: Colors.white),
        ],
      ),
    ),
  );
}

/// ---------------- MINI PLAYER (NO GREEN) ----------------
Widget _miniPlayer(Song song) {
  return Container(
    height: 75,
    margin: const EdgeInsets.all(12),
    padding:
        const EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(
      color: const Color(0xff080016),
      borderRadius: BorderRadius.circular(18),
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(10),
          child: Image.asset(
            song.image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Text(
                song.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Russ",
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 12),
              ),
            ],
          ),
        ),
        const Icon(Icons.skip_previous,
            color: Colors.white),
        const SizedBox(width: 8),
        const Icon(Icons.play_circle_fill,
            color: Colors.white,
            size: 34),
        const SizedBox(width: 8),
        const Icon(Icons.skip_next,
            color: Colors.white),
      ],
    ),
  );
}

  Widget _imageBtn(String asset) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

class _TabsRow extends StatelessWidget {
  const _TabsRow();

  @override
  Widget build(BuildContext context) {
    return 
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  physics: const BouncingScrollPhysics(),
  padding: const EdgeInsets.symmetric(horizontal: 10), // optional left-right padding
  child: Row(
    children: [
      InkWell(
        onTap: () {},
        child: BuildTag(
          text: "All",
          bgColor: Colors.white,
          textColor: Colors.black,
        ),
      ),
      const SizedBox(width: 10),
      InkWell(
        onTap: () {},
        child: BuildTag(
          text: "Songs",
          bgColor: Colors.white.withOpacity(0.06),
          textColor: Colors.white,
        ),
      ),
      const SizedBox(width: 10),
      InkWell(
        onTap: () {},
        child: BuildTag(
          text: "Album",
          bgColor: Colors.white.withOpacity(0.06),
          textColor: Colors.white,
        ),
      ),
      const SizedBox(width: 10),
      InkWell(
        onTap: () {},
        child: BuildTag(
          text: "Merch",
          bgColor: Colors.white.withOpacity(0.06),
          textColor: Colors.white,
        ),
      ),
      const SizedBox(width: 10),
      InkWell(
        onTap: () {},
        child: BuildTag(
          text: "About",
          bgColor: Colors.white.withOpacity(0.06),
          textColor: Colors.white,
        ),
      ),
    ],
  ),
);



 
  }
}
