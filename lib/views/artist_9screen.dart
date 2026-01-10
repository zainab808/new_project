







// // import 'package:flutter/material.dart';
// // import 'package:new_project/views/all_info_screen.dart';

// // class Artist9screen extends StatefulWidget {
// //   const Artist9screen({super.key});

// //   @override
// //   State<Artist9screen> createState() => _Artist9screenState();
// // }

// // class _Artist9screenState extends State<Artist9screen> {
// //   bool isFollowing = false;
// //   @override
// //   Widget build(BuildContext context) {
// //     final size = MediaQuery.of(context).size;
// //         final w = MediaQuery.of(context).size.width;
// //     final h = MediaQuery.of(context).size.height;

// //     final merch = [
// //       {"image": "assets/lac7.png", "title": "Russ Hoodie", "price": "\$45"},
// //       {"image": "assets/jack2.png", "title": "Russ T-Shirt", "price": "\$30"},
// //       {"image": "assets/lac7.png", "title": "Russ Cap", "price": "\$20"},
// //       {"image": "assets/jack2.png", "title": "Russ Jacket", "price": "\$65"},
// //     ];

// //     return Scaffold(
// //       backgroundColor: Colors.black,
// //       body: Stack(
// //         children: [
// //           Container(
// //             decoration: const BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage("assets/background.jpg"),
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //           Container(color: Colors.black.withOpacity(0.75)),

// //           SafeArea(
// //             child: SingleChildScrollView(
// //               physics: const BouncingScrollPhysics(),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   const SizedBox(height: 16),

// //                   /// HERO IMAGE
// //                  /// ARTIST IMAGE
// //                   Padding(
// //                     padding: EdgeInsets.symmetric(horizontal: w * 0.06),
// //                     child: AspectRatio(
// //                       aspectRatio: 1,
// //                       child: Stack(
// //                         children: [
// //                           Container(
// //                             decoration: BoxDecoration(
// //                               borderRadius: BorderRadius.circular(24),
// //                               image: const DecorationImage(
// //                                 image: AssetImage('assets/artist6.jpg'),
// //                                 fit: BoxFit.cover,
// //                               ),
// //                             ),
// //                           ),
// //                           Container(
// //                             decoration: BoxDecoration(
// //                               borderRadius: BorderRadius.circular(24),
// //                               color: Colors.black.withOpacity(0.2),
// //                             ),
// //                           ),

// //                           /// BACK BUTTON
// //                           Positioned(
// //                             top: 14,
// //                             right: 14,
// //                             child: GestureDetector(
// //                               onTap: () => Navigator.pop(context),
// //                               child: Container(
// //                                 width: 40,
// //                                 height: 40,
// //                                 decoration: const BoxDecoration(
// //                                   shape: BoxShape.circle,
// //                                   image: DecorationImage(
// //                                     image:
// //                                         AssetImage('assets/right_icon.png'),
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),
// //                           ),

// //                           /// NAME
// //                            Positioned(
// //                             left: 16,
// //                             bottom: 16,
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 Text(
// //                                   "Sentiago",
// //                                   style: TextStyle(
// //                                       color: Colors.white, fontSize: 22),
// //                                 ),
// //                                 SizedBox(height: 4),
// //                                   Row(
// //                                     children: [
// //                                       Container(
// // height: 25,
// // width: 25,
// // decoration: BoxDecoration(
// //   image: DecorationImage(image: AssetImage("jack3.png"),fit: BoxFit.fill)
// // ),
// //                                       ),
// //                                       SizedBox(width: 5,),
                                      
// //                                       Text(
// //                                       "Russ",
// //                                       style: TextStyle(
// //                                           color: Colors.white, fontSize: 14),
// //                                                                       ),
// //                                     ],
// //                                   ),
// //  SizedBox(height: 4),
// //                                 Text(
// //                                   "Single.2025",
// //                                   style: TextStyle(
// //                                       color: Colors.white70, fontSize: 13),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),

// //                   const SizedBox(height: 20),

                  
// //                     /// ACTION ROW
// //                   Padding(
// //                     padding: EdgeInsets.symmetric(horizontal: w * 0.06),
// //                     child: Row(
// //                       children: [
// //                         Container(height: 30,
// //                         width: 30,
// //                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/jack.png"))),
                        
                        
// //                         )
// //                         // _circleImage('assets/jack.png'),
// //                        , const SizedBox(width: 12),
// //                         // Container(
// //                         //   padding: const EdgeInsets.symmetric(
// //                         //       horizontal: 30, vertical: 7),
// //                         //   decoration: BoxDecoration(
// //                         //     color: Colors.white,
// //                         //     borderRadius: BorderRadius.circular(30),
// //                         //   ),
// //                         //   child: 
// //                         //   const Text(
// //                         //     "Follow",
// //                         //     style: TextStyle(fontWeight: FontWeight.bold),
// //                         //   ),
// //                         // ),
          

// //  _circleImage('assets/add.png'),
// //            // _circleImage('assets/jack.png'),
// //                         const SizedBox(width: 8),
// //  _circleImage('assets/down.png'),




// //                         const Spacer(),
// //                         _circleImage('assets/more.png'),
// //                         const SizedBox(width: 18),
// //                         _circleImage('assets/shuffle.png'),
// //                         const SizedBox(width: 18),
// //                         _circleImage('assets/vector.png'),
// //                       ],
// //                     ),
// //                   ),


// // SizedBox(height: 10,),


// //                   ListTile(
// //   // leading: const Icon(Icons.music_note),
// //   title: const Text(
// //     "Sentiago",
// //     style: TextStyle(
// //       color: Colors.white,
// //       fontSize: 14,
// //       fontWeight: FontWeight.w400,
// //     ),
// //   ),
// //   subtitle: const Text(
// //     "Russ",style: TextStyle(color: Colors.white),
// //   ),
// //   trailing: const Icon(
// //     Icons.more_vert,
// //     color: Colors.white,
// //   ),
// //   onTap: () {
// //     // tap action
// //   },
// // ),








// //                   // Padding(
// //                   //   padding: const EdgeInsets.symmetric(horizontal: 20),
// //                   //   child: Row(
// //                   //     children: [
// //                   //       const CircleAvatar(
// //                   //         radius: 24,
// //                   //         backgroundColor: Colors.green,
// //                   //         child: Icon(Icons.play_arrow,
// //                   //             color: Colors.black, size: 28),
// //                   //       ),
// //                   //       const SizedBox(width: 14),
// //                   //       CircleAvatar(
// //                   //         radius: 24,
// //                   //         backgroundColor: Colors.white.withOpacity(0.1),
// //                   //         child:
// //                   //             const Icon(Icons.shuffle, color: Colors.white),
// //                   //       ),
// //                   //       const Spacer(),
// //                   //       const Icon(Icons.more_vert, color: Colors.white70),
// //                   //     ],
// //                   //   ),
// //                   // ),

// //                   const SizedBox(height: 15),
// //                    Padding(
// //                      padding: const EdgeInsets.symmetric(horizontal: 10),
// //                      child: Text(
// //                          "1 songs.3 min",
// //                          style: TextStyle(
// //                            color: Colors.white,
// //                            fontSize: 14,
// //                            fontWeight: FontWeight.w400,
// //                          ),
// //                        ),
// //                    ),
// //     const SizedBox(height: 26),
// //                   /// MERCH TITLE
// //                    Padding(
// //                     padding: EdgeInsets.symmetric(horizontal: 20),
// //                     child: Row(
// //                       children: [
// //                         Text(
// //                           "Now Trending",
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: 17,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                         Spacer(),
// //                          Text(
// //                           "See All >",
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: 16,
// //                             fontWeight: FontWeight.w500,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),

// //                   const SizedBox(height: 14),

// //                   /// 🔥 SLIM HORIZONTAL GRID
// //                      SizedBox(
// //                     height: 240,
// //                     child: ListView.separated(
// //                       padding:
// //                           const EdgeInsets.symmetric(horizontal: 15),
// //                       scrollDirection: Axis.horizontal,
// //                       itemCount: ArtistProfileScreen.albums.length,
// //                       separatorBuilder: (_, __) =>
// //                           const SizedBox(width: 14),
// //                       itemBuilder: (context, index) {
// //                         final album = ArtistProfileScreen.albums[index];
// //                         return _albumCard(
// //                           image: album['image']!,
// //                           title: album['title']!,
// //                           subtitle: album['subtitle']!,
// //                         );
// //                       },
// //                     ),
// //                   ),

// //                   // SizedBox(
// //                   //   height: 210, // 👈 reduced height
// //                   //   child: GridView.builder(
// //                   //     scrollDirection: Axis.horizontal,
// //                   //     padding: const EdgeInsets.symmetric(horizontal: 20),
// //                   //     itemCount: merch.length,
// //                   //     gridDelegate:
// //                   //         const SliverGridDelegateWithFixedCrossAxisCount(
// //                   //       crossAxisCount: 1,
// //                   //       mainAxisSpacing: 14,
// //                   //       childAspectRatio: 0.62, // 👈 makes cards thinner
// //                   //     ),
// //                   //     itemBuilder: (context, index) {
// //                   //       final item = merch[index];
// //                   //       return Container(
// //                   //         decoration: BoxDecoration(
// //                   //           color: Colors.white.withOpacity(0.06),
// //                   //           borderRadius: BorderRadius.circular(16),
// //                   //         ),
// //                   //         child: Column(
// //                   //           crossAxisAlignment: CrossAxisAlignment.start,
// //                   //           children: [
// //                   //             ClipRRect(
// //                   //               borderRadius: BorderRadius.circular(16),
// //                   //               child: Image.asset(
// //                   //                 item["image"]!,
// //                   //                 height: 120, // 👈 smaller image
// //                   //                 width: double.infinity,
// //                   //                 fit: BoxFit.cover,
// //                   //               ),
// //                   //             ),
// //                   //             const SizedBox(height: 8),
// //                   //             Padding(
// //                   //               padding: const EdgeInsets.symmetric(
// //                   //                   horizontal: 8),
// //                   //               child: Text(
// //                   //                 item["title"]!,
// //                   //                 style: const TextStyle(
// //                   //                   color: Colors.white,
// //                   //                   fontSize: 13,
// //                   //                   fontWeight: FontWeight.w500,
// //                   //                 ),
// //                   //                 maxLines: 1,
// //                   //                 overflow: TextOverflow.ellipsis,
// //                   //               ),
// //                   //             ),
// //                   //             const SizedBox(height: 4),
// //                   //             Padding(
// //                   //               padding: const EdgeInsets.symmetric(
// //                   //                   horizontal: 8),
// //                   //               child: Text(
// //                   //                 item["price"]!,
// //                   //                 style: const TextStyle(
// //                   //                   color: Colors.white70,
// //                   //                   fontSize: 12,
// //                   //                 ),
// //                   //               ),
// //                   //             ),
// //                   //           ],
// //                   //         ),
// //                   //       );
// //                   //     },
// //                   //   ),
// //                   // ),

// //                   const SizedBox(height: 30),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }




// // /// ================= ALBUM CARD =================
// // Widget _albumCard({
// //   required String image,
// //   required String title,
// //   required String subtitle,
// // }) {
// //   return SizedBox(
// //     width: 130,
// //     child: Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         ClipRRect(
// //           borderRadius: BorderRadius.circular(16),
// //           child: Image.asset(image,
// //               width: 130, height: 130, fit: BoxFit.cover),
// //         ),
// //         const SizedBox(height: 8),
// //         Text(title,
// //             style: const TextStyle(color: Colors.white)),
// //         Text(subtitle,
// //             style: const TextStyle(color: Colors.white60)),
// //       ],
// //     ),
// //   );
// // }




// // Widget _circleImage(String asset) {
// //   return CircleAvatar(
// //     backgroundColor: Colors.transparent,
// //     maxRadius: 12,
// //     backgroundImage: AssetImage(asset),
// //   );
// // }










// import 'package:flutter/material.dart';
// import 'package:new_project/views/all_info_screen.dart';

// class Artist9screen extends StatefulWidget {
//   const Artist9screen({super.key});

//   @override
//   State<Artist9screen> createState() => _Artist9screenState();
// }

// class _Artist9screenState extends State<Artist9screen> {
//   bool showMiniPlayer = false;
//   bool isPlaying = false;

//   @override
//   Widget build(BuildContext context) {
//     final w = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(
//         children: [
//           /// BG
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/background.jpg"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(color: Colors.black.withOpacity(0.75)),

//           /// MAIN UI
//           SafeArea(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.only(bottom: 100),
//               physics: const BouncingScrollPhysics(),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 16),

//                   /// IMAGE
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: w * 0.06),
//                     child: AspectRatio(
//                       aspectRatio: 1,
//                       child: Stack(
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(24),
//                               image: const DecorationImage(
//                                 image: AssetImage('assets/artist6.jpg'),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(24),
//                               color: Colors.black.withOpacity(0.2),
//                             ),
//                           ),
//                           Positioned(
//                             left: 16,
//                             bottom: 16,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: const [
//                                 Text("Sentiago",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 22)),
//                                 SizedBox(height: 4),
//                                 Text("Russ",
//                                     style: TextStyle(
//                                         color: Colors.white70, fontSize: 14)),
//                                 SizedBox(height: 4),
//                                 Text("Single · 2025",
//                                     style: TextStyle(
//                                         color: Colors.white54, fontSize: 12)),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 18),

//                   /// ACTION ROW
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: w * 0.06),
//                     child: Row(
//                       children: [
//                         _circleImage('assets/jack.png'),
//                         const SizedBox(width: 10),
//                         _circleImage('assets/add.png'),
//                         const SizedBox(width: 10),
//                         _circleImage('assets/down.png'),
//                         const Spacer(),
//                         _circleImage('assets/more.png'),
//                         const SizedBox(width: 18),
//                         _circleImage('assets/shuffle.png'),
//                         const SizedBox(width: 18),

//                         /// PLAY / PAUSE ICON (VECTOR)
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               showMiniPlayer = true;
//                               isPlaying = !isPlaying;
//                             });
//                           },
//                           child: CircleAvatar(
//                             radius: 14,
//                             backgroundColor: Colors.transparent,
//                             backgroundImage: AssetImage(
//                               isPlaying
//                                   ? 'assets/.png'
//                                   : 'assets/vector.png',
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 12),

//                   /// SONG TILE
//                   const ListTile(
//                     title: Text("Sentiago",
//                         style: TextStyle(color: Colors.white)),
//                     subtitle:
//                         Text("Russ", style: TextStyle(color: Colors.white60)),
//                     trailing:
//                         Icon(Icons.more_vert, color: Colors.white),
//                   ),

//                   const SizedBox(height: 25),

//                   const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     child: Text(
//                       "1 song · 3 min",
//                       style: TextStyle(color: Colors.white70),
//                     ),
//                   ),

//                   const SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),

//           /// MINI PLAYER (BOTTOM)
//           if (showMiniPlayer)
//             Positioned(
//               left: 0,
//               right: 0,
//               bottom: 0,
//               child: Container(
//                 height: 80,
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 decoration: BoxDecoration(
//                   color: const Color(0xff1c1c1c),
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20),
//                   ),
//                 ),
//                 child: Row(
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: Image.asset(
//                         'assets/artist6.jpg',
//                         width: 48,
//                         height: 48,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     const SizedBox(width: 12),
//                     const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Sentiago",
//                             style: TextStyle(
//                                 color: Colors.white, fontSize: 14)),
//                         Text("Russ",
//                             style: TextStyle(
//                                 color: Colors.white60, fontSize: 12)),
//                       ],
//                     ),
//                     const Spacer(),

//                     /// MINI PLAYER PLAY / PAUSE
//                     GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           isPlaying = !isPlaying;
//                         });
//                       },
//                       child: Icon(
//                         isPlaying ? Icons.pause : Icons.play_arrow,
//                         color: Colors.white,
//                         size: 32,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

// /// CIRCLE ICON
// Widget _circleImage(String asset) {
//   return CircleAvatar(
//     radius: 14,
//     backgroundColor: Colors.transparent,
//     backgroundImage: AssetImage(asset),
//   );
// }








import 'package:flutter/material.dart';
import 'package:new_project/views/all_info_screen.dart';

class Artist9screen extends StatefulWidget {
  const Artist9screen({super.key});

  @override
  State<Artist9screen> createState() => _Artist9screenState();
}

class _Artist9screenState extends State<Artist9screen> {
      final merch = [
      {"image": "assets/lac7.png", "title": "Russ Hoodie", "price": "\$45"},
      {"image": "assets/jack2.png", "title": "Russ T-Shirt", "price": "\$30"},
      {"image": "assets/lac7.png", "title": "Russ Cap", "price": "\$20"},
      {"image": "assets/jack2.png", "title": "Russ Jacket", "price": "\$65"},
    ];
  bool showMiniPlayer = false;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          /// BACKGROUND
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.75)),

          /// MAIN CONTENT
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 100),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
     /// HERO IMAGE
                 /// ARTIST IMAGE
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
                                image: AssetImage('assets/artist6.jpg'),
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

//                           /// BACK BUTTON
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
                                    image:
                                        AssetImage('assets/right_icon.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          /// NAME
                           Positioned(
                            left: 16,
                            bottom: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sentiago",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Container(
height: 25,
width: 25,
decoration: BoxDecoration(
  image: DecorationImage(image: AssetImage("jack3.png"),fit: BoxFit.fill)
),
                                      ),
                                      SizedBox(width: 5,),
                                      
                                      Text(
                                      "Russ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                                                      ),
                                    ],
                                  ),
 SizedBox(height: 4),
                                Text(
                                  "Single.2025",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
 
                  const SizedBox(height: 18),

              //  / ACTION ROW
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                    child: Row(
                      children: [
                        _circleImage('assets/jack.png'),
                        const SizedBox(width: 10),
                        _circleImage('assets/add.png'),
                        const SizedBox(width: 10),
                        _circleImage('assets/down.png'),
                        const Spacer(),
                        _circleImage('assets/more.png'),
                        const SizedBox(width: 18),
                        _circleImage('assets/shuffle.png'),
                        const SizedBox(width: 18),

                    //  / PLAY / PAUSE BUTTON
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showMiniPlayer = true;
                              isPlaying = !isPlaying;
                            });
                          },
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                              isPlaying
                                  ? 'assets/Solid.png'
                                  : 'assets/vector.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  /// SONG TILE
                   ListTile(
                    title: Text(
                      "Sentiago",
                      style: TextStyle(  color:
                                isPlaying ? Color(0xff00FF44) : Colors.white,),
                    ),
                    subtitle: Text(
                      "Russ",
                      style: TextStyle(color: Colors.white60),
                    ),
                    trailing:
                        Icon(Icons.more_vert, color: Colors.white),
                  ),

              

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "1 song · 3 min",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),



                  const SizedBox(height: 30),
       /// MERCH TITLE
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Now Trending",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                         Text(
                          "See All >",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),

                  /// 🔥 SLIM HORIZONTAL GRID
                     SizedBox(
                    height: 240,
                    child: ListView.separated(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15),
                      scrollDirection: Axis.horizontal,
                      itemCount: ArtistProfileScreen.albums.length,
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: 14),
                      itemBuilder: (context, index) {
                        final album = ArtistProfileScreen.albums[index];
                        return _albumCard(
                          image: album['image']!,
                          title: album['title']!,
                          subtitle: album['subtitle']!,
                        );
                      },
                    ),
                  ),

                  // SizedBox(
                  //   height: 210, // 👈 reduced height
                  //   child: GridView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     padding: const EdgeInsets.symmetric(horizontal: 20),
                  //     itemCount: merch.length,
                  //     gridDelegate:
                  //         const SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 1,
                  //       mainAxisSpacing: 14,
                  //       childAspectRatio: 0.62, // 👈 makes cards thinner
                  //     ),
                  //     itemBuilder: (context, index) {
                  //       final item = merch[index];
                  //       return Container(
                  //         decoration: BoxDecoration(
                  //           color: Colors.white.withOpacity(0.06),
                  //           borderRadius: BorderRadius.circular(16),
                  //         ),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             ClipRRect(
                  //               borderRadius: BorderRadius.circular(16),
                  //               child: Image.asset(
                  //                 item["image"]!,
                  //                 height: 120, // 👈 smaller image
                  //                 width: double.infinity,
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             ),
                  //             const SizedBox(height: 8),
                  //             Padding(
                  //               padding: const EdgeInsets.symmetric(
                  //                   horizontal: 8),
                  //               child: Text(
                  //                 item["title"]!,
                  //                 style: const TextStyle(
                  //                   color: Colors.white,
                  //                   fontSize: 13,
                  //                   fontWeight: FontWeight.w500,
                  //                 ),
                  //                 maxLines: 1,
                  //                 overflow: TextOverflow.ellipsis,
                  //               ),
                  //             ),
                  //             const SizedBox(height: 4),
                  //             Padding(
                  //               padding: const EdgeInsets.symmetric(
                  //                   horizontal: 8),
                  //               child: Text(
                  //                 item["price"]!,
                  //                 style: const TextStyle(
                  //                   color: Colors.white70,
                  //                   fontSize: 12,
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),


                ],
              ),
            ),
          ),

          /// MINI PLAYER
          if (showMiniPlayer)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                  color: Color(0xff1c1c1c),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/artist6.jpg',
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),

                    /// TITLE (COLOR CHANGE)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sentiago",
                          style: TextStyle(
                            color:
                               Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          "Russ",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    /// MINI PLAYER PLAY / PAUSE
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      },
                      child: 
                      
                      
                      Row(
                        children: [
                          const Icon(Icons.skip_previous,
            color: Colors.white),
        const SizedBox(width: 8),
                          Icon(
                            isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white,
                            size: 32,
                          ),
                           const SizedBox(width: 8),
        const Icon(Icons.skip_next,
            color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// CIRCLE ICON WIDGET
Widget _circleImage(String asset) {
  return CircleAvatar(
    radius: 14,
    backgroundColor: Colors.transparent,
    backgroundImage: AssetImage(asset),
  );
}




// /// ================= ALBUM CARD =================
Widget _albumCard({
  required String image,
  required String title,
  required String subtitle,
}) {
  return SizedBox(
    width: 130,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(image,
              width: 130, height: 130, fit: BoxFit.cover),
        ),
        const SizedBox(height: 8),
        Text(title,
            style: const TextStyle(color: Colors.white)),
        Text(subtitle,
            style: const TextStyle(color: Colors.white60)),
      ],
    ),
  );
}
