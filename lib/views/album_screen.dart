

// // // import 'package:flutter/material.dart';
// // // import 'package:new_project/components/episode.dart' show BuildTag;

// // // class Artist5ProfileScreen extends StatelessWidget {
// // //   const Artist5ProfileScreen({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: LayoutBuilder(
// // //         builder: (context, constraints) {
// // //           final w = constraints.maxWidth;
// // //           final h = constraints.maxHeight;

// // //           return Stack(
// // //             children: [
// // //               /// Background
// // //               Container(
// // //                 width: w,
// // //                 height: h,
// // //                 decoration: const BoxDecoration(
// // //                   image: DecorationImage(
// // //                     image: AssetImage('assets/background.jpg'),
// // //                     fit: BoxFit.cover,
// // //                   ),
// // //                 ),
// // //               ),

// // //               /// Overlay
// // //               Container(
// // //                 width: w,
// // //                 height: h,
// // //                 color: Colors.black.withOpacity(0.55),
// // //               ),

// // //               SafeArea(
// // //                 child: SingleChildScrollView(
// // //                   physics: const BouncingScrollPhysics(),
// // //                   child: Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       const SizedBox(height: 16),

// // //                       /// ARTIST IMAGE CARD
// // //                       Padding(
// // //                         padding: EdgeInsets.symmetric(horizontal: w * 0.06),
// // //                         child: AspectRatio(
// // //                           aspectRatio: 1,
// // //                           child: Stack(
// // //                             children: [
// // //                               Container(
// // //                                 decoration: BoxDecoration(
// // //                                   borderRadius: BorderRadius.circular(24),
// // //                                   image: const DecorationImage(
// // //                                     image: AssetImage('assets/artist4.png'),
// // //                                     fit: BoxFit.cover,
// // //                                   ),
// // //                                 ),
// // //                               ),

// // //                               Container(
// // //                                 decoration: BoxDecoration(
// // //                                   borderRadius: BorderRadius.circular(24),
// // //                                   color: Colors.black.withOpacity(0.15),
// // //                                 ),
// // //                               ),

// // //                               /// Top right image
// // //                               Positioned(
// // //                                 top: 14,
// // //                                 right: 14,
// // //                                 child: GestureDetector(
// // //                                   onTap: () => Navigator.pop(context),
// // //                                   child: Container(
// // //                                     width: 40,
// // //                                     height: 40,
// // //                                     decoration: const BoxDecoration(
// // //                                       shape: BoxShape.circle,
// // //                                       image: DecorationImage(
// // //                                         image: AssetImage(
// // //                                             'assets/right_icon.png'),
// // //                                         fit: BoxFit.cover,
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                 ),
// // //                               ),

// // //                               /// Name
// // //                               Positioned(
// // //                                 left: 16,
// // //                                 bottom: 16,
// // //                                 right: 16,
// // //                                 child: Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   children: const [
// // //                                     Text(
// // //                                       "Russ",
// // //                                       style: TextStyle(
// // //                                         color: Colors.white,
// // //                                         fontSize: 22,
// // //                                         fontWeight: FontWeight.w400,
// // //                                       ),
// // //                                     ),
// // //                                     SizedBox(height: 4),
// // //                                     Text(
// // //                                       "15.5 million followers",
// // //                                       style: TextStyle(
// // //                                         color: Colors.white70,
// // //                                         fontSize: 13,
// // //                                       ),
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       ),

// // //                       const SizedBox(height: 20),

// // //                       /// 🔘 ACTION ROW (ALL IMAGES)
// // //                       Padding(
// // //                         padding: EdgeInsets.symmetric(horizontal: w * 0.06),
// // //                         child: Row(
// // //                           children: [
// // //                             /// image BEFORE follow
// // //                             InkWell(
// // //                               onTap: (){},
                              
                              
// // //                               child:
// // //                               Container(
// // //                                 height: 30,
// // //                                 width: 30,
// // //                                 decoration: BoxDecoration(
// // //                                   image: DecorationImage(image: AssetImage("assets/jack.png"))
// // //                                 ),

// // //                               )),
// // //                               //  _imageBtn('assets/jack.png')),

// // //                             const SizedBox(width: 12),

// // //                             /// Follow button
// // //                             InkWell(
// // //                               onTap: (){},
// // //                               child: Container(
// // //                                 padding: const EdgeInsets.symmetric(
// // //                                     horizontal: 30, vertical: 7),
// // //                                 decoration: BoxDecoration(
// // //                                   color: Colors.white,
// // //                                   borderRadius: BorderRadius.circular(30),
// // //                                 ),
// // //                                 child: const Text(
// // //                                   "Follow",
// // //                                   style: TextStyle(
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                             ),

// // //                             // const SizedBox(width: 12),
// // //                             Spacer(),
                            
// // //                             /// shuffle image
// // //                             InkWell(
// // //                               onTap: (){},
                              
// // //                               child: _imageBtn('assets/more.png')),
// // //                             const SizedBox(width: 20),


// // //                             /// shuffle image
// // //                             InkWell(
// // //                               onTap: (){},
// // //                               child: _imageBtn('assets/shuffle.png')),

// // //                             const SizedBox(width: 20),

// // //                             /// play image
// // //                             InkWell(
// // //                               onTap: (){},
// // //                               child: _imageBtn('assets/vector.png')),
// // //                           ],
// // //                         ),
// // //                       ),

// // //                       const SizedBox(height: 10),
// // //                   Padding(
// // //                     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
// // //                     child: Container(
// // //                       height: 40,
// // //                     padding: const EdgeInsets.all(8),
// // //                     decoration: BoxDecoration(

// // //                           color:  Colors.white.withOpacity(0.06),
// // //                       // color: const Color(0xFF2A3352),
// // //                       borderRadius: BorderRadius.circular(30),
// // //                     ),
// // //                     child: Row(
// // //                       children: const [
// // //                         Image(image: AssetImage("assets/Rectangle.png")),
// // //                         // Icon(Icons.play_circle_fill, size: 40),
// // //                         SizedBox(width: 12),
// // //                         Expanded(
// // //                           child: Text(
// // //                             "Check out the latest track",
// // //                             style: TextStyle(fontSize: 15, color: Colors.white),
// // //                           ),
// // //                         ),
// // //                         Icon(Icons.arrow_forward_ios,size: 20, color: Colors.white),
// // //                       ],
// // //                     ),
// // //                                     ),
// // //                   ),

// // //                       /// BOTTOM SECTION
// // //                       // Column(
// // //                       //   crossAxisAlignment: CrossAxisAlignment.start,
// // //                       //   children: const [
// // //                       //     _TabsRow(),
// // //                       //     SizedBox(height: 22),
// // //                       //     Text(
// // //                       //       "Top Songs",
// // //                       //       style: TextStyle(
// // //                       //         color: Colors.white,
// // //                       //         fontSize: 20,
// // //                       //         fontWeight: FontWeight.bold,
// // //                       //       ),
// // //                       //     ),
// // //                       //     SizedBox(height: 20),
// // //                       //     _SongTile(
// // //                       //       title: "Losin Control",
// // //                       //       plays: "88M plays",
// // //                       //     ),
// // //                       //     SizedBox(height: 14),
// // //                       //     _SongTile(
// // //                       //       title: "Sanctified",
// // //                       //       plays: "204M plays",
// // //                       //     ),
// // //                       //   ],
// // //                       // ),
             

// // // Padding(
// // //   padding: const EdgeInsets.all(15.0),
// // //   child: Column(
// // //     crossAxisAlignment: CrossAxisAlignment.start,
// // //     children: [
// // //       const _TabsRow(),
  
// // //       const SizedBox(height: 18),
  
// // //       /// 🔹 Top Songs Title
// // //       const Text(
// // //         "Albums",
// // //         style: TextStyle(
// // //           color: Colors.white,
// // //           fontSize: 18,
// // //           fontWeight: FontWeight.w400,
// // //         ),
// // //       ),
  
// // //       const SizedBox(height: 14),
  
      
// // //     ],
// // //   ),
// // // ),








             
// // //                     ],
// // //                   ),
// // //                 ),
// // //               ),
// // //             ],
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   /// IMAGE BUTTON
// // //   Widget _imageBtn(String asset) {
// // //     return Container(
// // //       width: 30,
// // //       height: 30,
// // //       decoration: BoxDecoration(
// // //         shape: BoxShape.circle,
// // //         image: DecorationImage(
// // //           image: AssetImage(asset),
// // //           fit: BoxFit.fill,
// // //         ),
// // //       ),
// // //     );
// // //   }

// // // }

// // // /// TABS
// // // class _TabsRow extends StatelessWidget {
// // //   const _TabsRow();

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return 
// // // SingleChildScrollView(
// // //   scrollDirection: Axis.horizontal,
// // //   physics: const BouncingScrollPhysics(),
// // //   padding: const EdgeInsets.symmetric(horizontal: 16), // optional left-right padding
// // //   child: Row(
// // //     children: [
// // //       InkWell(
// // //         onTap: () {},
// // //         child: BuildTag(
// // //           text: "All",
// // //            bgColor: Colors.white.withOpacity(0.06),
// // //         textColor: Colors.white,
// // //         ),
// // //       ),
// // //       const SizedBox(width: 10),
// // //       InkWell(
// // //         onTap: () {},
// // //         child: BuildTag(
// // //           text: "Songs",
// // //         bgColor: Colors.white.withOpacity(0.06),
// // //           textColor: Colors.white,
     
       
// // //         ),
// // //       ),
// // //       const SizedBox(width: 10),
// // //       InkWell(
// // //         onTap: () {},
// // //         child: BuildTag(
// // //           text: "Album",
// // //              bgColor: Colors.white,
// // //                textColor: Colors.black,
        
// // //         ),
// // //       ),
// // //       const SizedBox(width: 10),
// // //       InkWell(
// // //         onTap: () {},
// // //         child: BuildTag(
// // //           text: "Merch",
// // //           bgColor: Colors.white.withOpacity(0.06),
// // //           textColor: Colors.white,
// // //         ),
// // //       ),
// // //       const SizedBox(width: 10),
// // //       InkWell(
// // //         onTap: () {},
// // //         child: BuildTag(
// // //           text: "About",
// // //           bgColor: Colors.white.withOpacity(0.06),
// // //           textColor: Colors.white,
// // //         ),
// // //       ),
// // //     ],
// // //   ),
// // // );



 
  
// // //   }
// // // }

// // // class _TabText extends StatelessWidget {
// // //   final String text;
// // //   final bool active;

// // //   const _TabText(this.text, this.active);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Text(
// // //       text,
// // //       style: TextStyle(
// // //         color: active ? Colors.white : Colors.white60,
// // //         fontWeight: active ? FontWeight.bold : FontWeight.normal,
// // //       ),
// // //     );
// // //   }
// // // }

// // // /// SONG TILE
// // // class _SongTile extends StatelessWidget {
// // //   final String title;
// // //   final String plays;

// // //   const _SongTile({required this.title, required this.plays});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Row(
// // //       children: [
// // //         Container(
// // //           width: 55,
// // //           height: 55,
// // //           decoration: BoxDecoration(
// // //             borderRadius: BorderRadius.circular(10),
// // //             image: const DecorationImage(
// // //               image: AssetImage('assets/more.png'),
// // //               fit: BoxFit.cover,
// // //             ),
// // //           ),
// // //         ),
// // //         const SizedBox(width: 14),
// // //         Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Text(
// // //               title,
// // //               style: const TextStyle(
// // //                 color: Colors.white,
// // //                 fontWeight: FontWeight.bold,
// // //               ),
// // //             ),
// // //             Text(
// // //               plays,
// // //               style: const TextStyle(color: Colors.white60),
// // //             ),
// // //           ],
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }


// // // Widget _songRow({
// // //   required String image,
// // //   required String title,
// // //   required String subtitle,
// // // }) {
// // //   return Container(
// // //     padding: const EdgeInsets.all(10),
// // //     decoration: BoxDecoration(
// // //       // color: Colors.white.withOpacity(0.06),
// // //       borderRadius: BorderRadius.circular(14),
// // //     ),
// // //     child: Row(
// // //       children: [
// // //         /// Song Image
// // //         ClipRRect(
// // //           borderRadius: BorderRadius.circular(10),
// // //           child: Image.asset(
// // //             image,
// // //             width: 55,
// // //             height: 55,
// // //             fit: BoxFit.cover,
// // //           ),
// // //         ),

// // //         const SizedBox(width: 12),

// // //         /// Title + subtitle
// // //         Expanded(
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               Text(
// // //                 title,
// // //                 maxLines: 1,
// // //                 overflow: TextOverflow.ellipsis,
// // //                 style: const TextStyle(
// // //                   color: Colors.white,
// // //                   fontWeight: FontWeight.w600,
// // //                   fontSize: 15,
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 4),
// // //               Text(
// // //                 subtitle,
// // //                 maxLines: 1,
// // //                 overflow: TextOverflow.ellipsis,
// // //                 style: const TextStyle(
// // //                   color: Colors.white60,
// // //                   fontSize: 12,
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),

// // //         /// Play icon image
// // //         Image.asset(
// // //           'assets/more.png',
// // //           width: 22,
// // //           height: 22,
// // //           color: Colors.white,
// // //         ),
// // //       ],
// // //     ),
// // //   );
// // // }







// // import 'package:flutter/material.dart';
// // import 'package:new_project/components/episode.dart' show BuildTag;

// // class Artist5ProfileScreen extends StatelessWidget {
// //   const Artist5ProfileScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: LayoutBuilder(
// //         builder: (context, constraints) {
// //           final w = constraints.maxWidth;
// //           final h = constraints.maxHeight;

// //           // Sample albums list
// //           final albums = [
// //             'assets/album1.png',
// //             'assets/album2.png',
// //             'assets/album1.png',
// //             'assets/album2.png',
// //           ];

// //           return Stack(
// //             children: [
// //               /// Background
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

// //               /// Overlay
// //               Container(
// //                 width: w,
// //                 height: h,
// //                 color: Colors.black.withOpacity(0.55),
// //               ),

// //               SafeArea(
// //                 child: SingleChildScrollView(
// //                   physics: const BouncingScrollPhysics(),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       const SizedBox(height: 16),

// //                       /// ARTIST IMAGE CARD
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
// //                                   color: Colors.black.withOpacity(0.15),
// //                                 ),
// //                               ),
// //                               /// Top right back button
// //                               Positioned(
// //                                 top: 14,
// //                                 right: 14,
// //                                 child: GestureDetector(
// //                                   onTap: () => Navigator.pop(context),
// //                                   child: Container(
// //                                     width: 40,
// //                                     height: 40,
// //                                     decoration: const BoxDecoration(
// //                                       shape: BoxShape.circle,
// //                                       image: DecorationImage(
// //                                         image: AssetImage('assets/right_icon.png'),
// //                                         fit: BoxFit.cover,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ),
// //                               ),
// //                               /// Name & followers
// //                               Positioned(
// //                                 left: 16,
// //                                 bottom: 16,
// //                                 right: 16,
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: const [
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

// //                       /// 🔘 ACTION ROW
// //                       Padding(
// //                         padding: EdgeInsets.symmetric(horizontal: w * 0.06),
// //                         child: Row(
// //                           children: [
// //                             _imageBtn('assets/jack.png'),
// //                             const SizedBox(width: 12),
// //                             InkWell(
// //                               onTap: () {},
// //                               child: Container(
// //                                 padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
// //                                 decoration: BoxDecoration(
// //                                   color: Colors.white,
// //                                   borderRadius: BorderRadius.circular(30),
// //                                 ),
// //                                 child: const Text(
// //                                   "Follow",
// //                                   style: TextStyle(
// //                                     fontWeight: FontWeight.bold,
// //                                   ),
// //                                 ),
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

// //                       const SizedBox(height: 10),

// //                       /// Latest Track Row
// //                       Padding(
// //                         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
// //                         child: Container(
// //                           height: 40,
// //                           padding: const EdgeInsets.all(8),
// //                           decoration: BoxDecoration(
// //                             color: Colors.white.withOpacity(0.06),
// //                             borderRadius: BorderRadius.circular(30),
// //                           ),
// //                           child: Row(
// //                             children: const [
// //                               Image(image: AssetImage("assets/Rectangle.png")),
// //                               SizedBox(width: 12),
// //                               Expanded(
// //                                 child: Text(
// //                                   "Check out the latest track",
// //                                   style: TextStyle(fontSize: 15, color: Colors.white),
// //                                 ),
// //                               ),
// //                               Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
// //                             ],
// //                           ),
// //                         ),
// //                       ),

// //                       /// Tabs
// //                       const _TabsRow(),

// //                       const SizedBox(height: 18),

// //                       /// 🔹 Albums Title
// //                       const Padding(
// //                         padding: EdgeInsets.symmetric(horizontal: 16),
// //                         child: Text(
// //                           "Albums",
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: 18,
// //                             fontWeight: FontWeight.w400,
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 14),

// //                       /// 🔹 Albums Scroll
// //                       SizedBox(
// //                         height: 140,
// //                         child: ListView.separated(
// //                           padding: const EdgeInsets.symmetric(horizontal: 16),
// //                           scrollDirection: Axis.horizontal,
// //                           physics: const BouncingScrollPhysics(),
// //                           itemBuilder: (context, index) {
// //                             final album = albums[index];
// //                             return ClipRRect(
// //                               borderRadius: BorderRadius.circular(16),
// //                               child: Image.asset(
// //                                 album,
// //                                 width: 120,
// //                                 height: 140,
// //                                 fit: BoxFit.cover,
// //                               ),
// //                             );
// //                           },
// //                           separatorBuilder: (_, __) => const SizedBox(width: 12),
// //                           itemCount: albums.length,
// //                         ),
// //                       ),

// //                       const SizedBox(height: 20),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           );
// //         },
// //       ),
// //     );
// //   }

// //   /// IMAGE BUTTON
// //   Widget _imageBtn(String asset) {
// //     return Container(
// //       width: 30,
// //       height: 30,
// //       decoration: BoxDecoration(
// //         shape: BoxShape.circle,
// //         image: DecorationImage(
// //           image: AssetImage(asset),
// //           fit: BoxFit.fill,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // /// ---------------- TABS ----------------
// // class _TabsRow extends StatelessWidget {
// //   const _TabsRow();

// //   @override
// //   Widget build(BuildContext context) {
// //     return SingleChildScrollView(
// //       scrollDirection: Axis.horizontal,
// //       physics: const BouncingScrollPhysics(),
// //       padding: const EdgeInsets.symmetric(horizontal: 16),
// //       child: Row(
// //         children: [
// //           _tab("All"),
// //           const SizedBox(width: 10),
// //           _tab("Songs"),
// //           const SizedBox(width: 10),
// //           _tab("Album"),
// //           const SizedBox(width: 10),
// //           _tab("Merch"),
// //           const SizedBox(width: 10),
// //           _tab("About"),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _tab(String text) {
// //     return InkWell(
// //       onTap: () {},
// //       splashColor: Colors.transparent,
// //       highlightColor: Colors.transparent,
// //       child: BuildTag(
// //         text: text,
// //         bgColor: Colors.white.withOpacity(0.06),
// //         textColor: Colors.white,
// //       ),
// //     );
// //   }
// // }








// import 'package:flutter/material.dart';
// import 'package:new_project/components/artist_moresheet.dart';
// import 'package:new_project/components/episode.dart' show BuildTag;
// import 'package:new_project/components/tabs_row.dart';
// import 'package:new_project/views/artist_9screen.dart';
// import 'package:new_project/views/artist_screeen3.dart';
// import 'package:new_project/views/all_info_screen.dart';
// import 'package:new_project/views/artist_screen2.dart';
// import 'package:new_project/views/songs_screen.dart';
// import 'package:new_project/views/merch_screen.dart';
// import 'package:new_project/views/about_screen.dart';

// class Artist5ProfileScreen extends StatefulWidget {
//   const Artist5ProfileScreen({super.key});

//   @override
//   State<Artist5ProfileScreen> createState() => _Artist5ProfileScreenState();
// }

// class _Artist5ProfileScreenState extends State<Artist5ProfileScreen> {
//      bool isFollowing = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           final w = constraints.maxWidth;
//           final h = constraints.maxHeight;

//           // Sample albums list
//           final albums = [
//             'assets/album1.png',
//             'assets/album2.png',
//             'assets/album1.png',
//             'assets/album2.png',
//             'assets/album1.png',
//             'assets/album2.png',
//           ];

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
//                         padding: EdgeInsets.symmetric(horizontal: w * 0.06),
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
//                                                  InkWell(
//                               onTap: (){},
                              
                              
//                               child:
//                                                      InkWell(
//                                 onTap: (){
//                                        Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const Artist6ProfileScreen(),
//         ),);
//                                 },
//                                 child: Container(
//                                   height: 30,
//                                   width: 30,
//                                   decoration: BoxDecoration(
//                                     image: DecorationImage(image: AssetImage("assets/jack.png"))
//                                   ),
                                
//                                 ),
//                               )),
       
        
//                             const SizedBox(width: 12),


                            
// GestureDetector(
//   onTap: () {
    
//     setState(() {
//       isFollowing = !isFollowing;
//     });
//   },
//   child: Container(
//     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(30),
//     ),
//     child: Text(
//       isFollowing ? "Following" : "Follow",
//       style: const TextStyle(fontWeight: FontWeight.bold),
//     ),
//   ),
// ),



//                            const Spacer(),
//                                              InkWell(
//   onTap: () {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.transparent,
//       isScrollControlled: true,
//       builder: (_) => ArtistMoreSheet(
//         artistName: "Russ",
//         artistImage: "assets/jack3.png",
//       ),
//     );
//   },
//   child: _imageBtn('assets/more.png'),
// ),

//                             // _imageBtn('assets/more.png'),
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
//                         child: InkWell(
//                               onTap: (){
//                               Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const Artist9screen()));

//                       },
//                           child: Container(
//                             height: 40,
//                             padding: const EdgeInsets.all(8),
//                             decoration: BoxDecoration(
//                               color: Colors.white.withOpacity(0.06),
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             child: Row(
//                               children: const [
//                                 Image(image: AssetImage("assets/Rectangle.png")),
//                                 SizedBox(width: 12),
//                                 Expanded(
//                                   child: Text(
//                                     "Check out the latest track",
//                                     style: TextStyle(fontSize: 15, color: Colors.white),
//                                   ),
//                                 ),
//                                 Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),

//                       /// Tabs
//                        CustomTabsRow(
//   selectedIndex: 2,
//   tabs: ["All", "Songs", "Album", "Merch", "About"],
//   screens: [
//     ArtistProfileScreen(),
//     Artist4ProfileScreen(),
//     Artist5ProfileScreen(),
//     Artist6ProfileScreen(),
//     Artist7ProfileScreen(),
//   ],
// ),

//                       const SizedBox(height: 18),

//                       /// 🔹 Albums Title
//                       const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Text(
//                           "Albums",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 14),

//                       /// 🔹 Albums Grid
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         child: GridView.builder(
//                           physics: const NeverScrollableScrollPhysics(),
//                           shrinkWrap: true,
//                           itemCount: albums.length,
//                           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2, // 2 albums per row
//                             crossAxisSpacing: 12,
//                             mainAxisSpacing: 12,
//                             childAspectRatio: 120 / 140,
//                           ),
//                           itemBuilder: (context, index) {
//                             final album = albums[index];
//                             return ClipRRect(
//                               borderRadius: BorderRadius.circular(16),
//                               child: Image.asset(
//                                 album,
//                                 fit: BoxFit.cover,
//                               ),
//                             );
//                           },
//                         ),
//                       ),

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
//       width: 25,
//       height: 25,
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









import 'package:flutter/material.dart';
import 'package:new_project/components/artist_moresheet.dart';
import 'package:new_project/components/tabs_row.dart';
import 'package:new_project/views/artist_9screen.dart';
import 'package:new_project/views/artist_screeen3.dart';
import 'package:new_project/views/all_info_screen.dart';
import 'package:new_project/views/artist_screen2.dart';
import 'package:new_project/views/songs_screen.dart';
import 'package:new_project/views/merch_screen.dart';
import 'package:new_project/views/about_screen.dart';

class Artist5ProfileScreen extends StatefulWidget {
  const Artist5ProfileScreen({super.key});

  @override
  State<Artist5ProfileScreen> createState() => _Artist5ProfileScreenState();
}

class _Artist5ProfileScreenState extends State<Artist5ProfileScreen> {
  bool isFollowing = false;

  /// Albums Data
  final List<Map<String, String>> albums = [
    {
      "image": "assets/album1.png",
      "title": "Scorpion",
      "subtitle": "2025 · Album",
    },
    {
      "image": "assets/album2.png",
      "title": "Her Loss",
      "subtitle": "2023 · Album",
    },
    {
      "image": "assets/album1.png",
      "title": "Scary Hours 2",
      "subtitle": "2022 · EP",
    },
    {
      "image": "assets/album2.png",
      "title": "For All The Dogs",
      "subtitle": "2023 · Album",
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                              const Positioned(
                                left: 16,
                                bottom: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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

                      /// ACTION ROW
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const Artist6ProfileScreen(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                "assets/jack.png",
                                height: 30,
                                width: 30,
                              ),
                            ),
                            const SizedBox(width: 12),

                            /// Follow Button
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFollowing = !isFollowing;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 7),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  isFollowing ? "Following" : "Follow",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                            const Spacer(),

                            /// More Button
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  isScrollControlled: true,
                                  builder: (_) => const ArtistMoreSheet(
                                    artistName: "Russ",
                                    artistImage: "assets/jack3.png",
                                  ),
                                );
                              },
                              child: _imageBtn('assets/more.png'),
                            ),
                            const SizedBox(width: 20),
                            _imageBtn('assets/shuffle.png'),
                            const SizedBox(width: 20),
                            _imageBtn('assets/vector.png'),
                          ],
                        ),
                      ),

                      const SizedBox(height: 12),

                      /// Latest Track
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Artist9screen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 40,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.06),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Row(
                              children: [
                                Image(
                                    image:
                                        AssetImage("assets/Rectangle.png")),
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
                      ),

                      const SizedBox(height: 18),

                      /// Tabs
                      CustomTabsRow(
                        selectedIndex: 2,
                        tabs: const ["All", "Songs", "Album", "Merch", "About"],
                        screens: const [
                          ArtistProfileScreen(),
                          Artist4ProfileScreen(),
                          Artist5ProfileScreen(),
                          Artist6ProfileScreen(),
                          Artist7ProfileScreen(),
                        ],
                      ),

                      const SizedBox(height: 18),

                      /// Albums Title
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Albums",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                      const SizedBox(height: 14),

                      /// Albums Grid
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(_)=>Artist9screen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: albums.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 16,
                              childAspectRatio: 0.72,
                            ),
                            itemBuilder: (context, index) {
                              final album = albums[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.asset(
                                        album["image"]!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    album["title"]!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    album["subtitle"]!,
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
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

  /// Image Button
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
