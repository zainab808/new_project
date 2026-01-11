
import 'package:flutter/material.dart';
import 'package:new_project/components/artist_moresheet.dart';
import 'package:new_project/components/custom_song_tile.dart';
import 'package:new_project/components/customqueebottumsheet.dart';
import 'package:new_project/components/savetoplaylistsheet.dart';
import 'package:new_project/components/showsongoption.dart';
import 'package:new_project/components/tabs_row.dart';
import 'package:new_project/views/all_info_screen.dart';
import 'package:share_plus/share_plus.dart';

import 'package:new_project/views/artist_9screen.dart';
import 'package:new_project/views/artist_screen2.dart';
import 'package:new_project/views/album_screen.dart';
import 'package:new_project/views/merch_screen.dart';
import 'package:new_project/views/about_screen.dart';

class Artist4ProfileScreen extends StatefulWidget {
  const Artist4ProfileScreen({super.key});

  @override
  State<Artist4ProfileScreen> createState() => _Artist4ProfileScreenState();
}

class _Artist4ProfileScreenState extends State<Artist4ProfileScreen> {
  bool isFollowing = false;

//  void _showSongOptions(BuildContext context, String songTitle) {
// void _showSongOptions(
//   BuildContext context, {
//   required String image,
//   required String title,
//   required String subtitle,
// }) {
//   showModalBottomSheet(
//     context: context,
//     backgroundColor: Colors.grey[900],
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//     ),
//     builder: (context) {
//       return Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Wrap(
//           children: [
//             /// TOP SONG TILE (IMAGE + TITLE + SUBTITLE)
//             ListTile(
//               contentPadding: EdgeInsets.zero,
//               leading: ClipRRect(
//                 borderRadius: BorderRadius.circular(8),
//                 child: Image.asset(
//                   image,
//                   width: 55,
//                   height: 55,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               title: Text(
//                 title,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               subtitle: Text(
//                 subtitle,
//                 style: const TextStyle(
//                   color: Colors.white60,
//                   fontSize: 13,
//                 ),
//               ),
//             ),

//             const Divider(color: Colors.white38),

//             ListTile(
//               leading: const Icon(Icons.share, color: Colors.white),
//               title:
//                   const Text('Share', style: TextStyle(color: Colors.white)),
//               onTap: () {
//                 Navigator.pop(context);
//                 Share.share("Check out this song: $title 🎵");
//               },
//             ),

//             ListTile(
//               leading:
//                   const Icon(Icons.playlist_add, color: Colors.white),
//               title: const Text(
//                 'Add to Playlist',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 showModalBottomSheet(
//                   context: context,
//                   backgroundColor: Colors.transparent,
//                   isScrollControlled: true,
//                   builder: (_) => const SaveToPlaylistSheet(),
//                 );
//               },
//             ),

//             ListTile(
//               leading:
//                   const Icon(Icons.queue_music, color: Colors.white),
//               title: const Text(
//                 'Add to Queue',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 showModalBottomSheet(
//                   context: context,
//                   backgroundColor: Colors.transparent,
//                   isScrollControlled: true,
//                   builder: (_) =>  CustomQueueBottomSheet(),
//                 );
//               },
//             ),

//             ListTile(
//               leading: const Icon(Icons.album, color: Colors.white),
//               title: const Text(
//                 'Go to Album',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => const Artist5ProfileScreen(),
//                   ),
//                 );
//               },
//             ),

//             ListTile(
//               leading: const Icon(Icons.person, color: Colors.white),
//               title: const Text(
//                 'Go to Artist',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => const Artist4ProfileScreen(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }







// //   showModalBottomSheet(




// //     context: context,
// //     backgroundColor: Colors.grey[900],
// //     shape: const RoundedRectangleBorder(
// //       borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// //     ),
// //     builder: (context) {
// //       return Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Wrap(
// //           children: [
// //             Text(
// //               songTitle,
// //               style: const TextStyle(
// //                 color: Colors.white,
// //                 fontSize: 18,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //             const Divider(color: Colors.white38),
// //             ListTile(
// //               leading: const Icon(Icons.share, color: Colors.white),
// //               title: const Text('Share', style: TextStyle(color: Colors.white)),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 Share.share("Check out this song: $songTitle 🎵"); 
// //               },
// //             ),
// //    ListTile(
// //   leading: const Icon(Icons.playlist_add, color: Colors.white),
// //   title: const Text(
// //     'Add to Playlist',
// //     style: TextStyle(color: Colors.white),
// //   ),
// //   onTap: () {
// //     Navigator.pop(context); // first bottom sheet close

// //     showModalBottomSheet(
// //       context: context,
// //       backgroundColor: Colors.transparent,
// //       isScrollControlled: true,
// //       builder: (_) => const SaveToPlaylistSheet(),
// //     );
// //   },
// // ),

    
    
    
// //             ListTile(
// //               leading: const Icon(Icons.queue_music, color: Colors.white),
// //               title: InkWell(
// //               onTap: () {
// //                                               showModalBottomSheet(
// //                                                 context: context,
// //                                                 backgroundColor:
// //                                                     Colors.transparent,
// //                                                 isScrollControlled: true,
// //                                                 builder: (_) =>
// //                                                     CustomQueueBottomSheet(),
// //                                               );
// //                                             },
// //                 child: const Text('Add to Queue', style: TextStyle(color: Colors.white))),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 // Add to queue logic
// //               },
// //             ),
// //             ListTile(
// //               leading: const Icon(Icons.album, color: Colors.white),
// //               title: const Text('Go to Album', style: TextStyle(color: Colors.white)),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 Navigator.push(context, MaterialPageRoute(builder: (_) => const Artist5ProfileScreen()));
// //               },
// //             ),
// //             ListTile(
// //               leading: const Icon(Icons.person, color: Colors.white),
// //               title: const Text('Go to Artist', style: TextStyle(color: Colors.white)),
// //               onTap: () {
// //                 Navigator.pop(context);
// //                 Navigator.push(context, MaterialPageRoute(builder: (_) => const Artist4ProfileScreen()));
// //               },
// //             ),
// //           ],
// //         ),
// //       );
// //     },
// //   );



// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;

          return Stack(
            children: [
              // Background
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

              // Overlay
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
                      // Artist Image Card
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

                      // Action Row
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Artist4ProfileScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/jack.png"),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFollowing = !isFollowing;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  isFollowing ? "Following" : "Follow",
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Spacer(),
                                              InkWell(
  onTap: () {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => ArtistMoreSheet(
        artistName: "Russ",
        artistImage: "assets/jack3.png",
      ),
    );
  },
  child: _imageBtn('assets/more.png'),
),

                            // InkWell(onTap: () {}, child: _imageBtn('assets/more.png')),
                            const SizedBox(width: 20),
                            InkWell(onTap: () {}, child: _imageBtn('assets/shuffle.png')),
                            const SizedBox(width: 20),
                            InkWell(onTap: () {}, child: _imageBtn('assets/vector.png')),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Artist9screen()));
                          },
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
                      ),
                                           /// Tabs
                   CustomTabsRow(
  selectedIndex: 1,
  tabs: ["All", "Songs", "Album", "Merch", "About"],
  screens: [
    ArtistProfileScreen(),
    Artist4ProfileScreen(),
    Artist5ProfileScreen(),
    Artist6ProfileScreen(),
    Artist7ProfileScreen(),
  ],
),


                      // Songs List
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Songs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 14),

                            SongTile(
                              image: 'assets/artist2.png',
                              title: 'Losin Control',
                              subtitle: 'Russ • 88M plays',
                              onMorePressed: () => showSongOptions(context,  image: 'assets/artist2.png',
                              title: 'Losin Control',
                              subtitle: 'Russ • 88M plays',)
                            ),
                             SongTile(
                              image: 'assets/artist2.png',
                              title: 'Losin Control',
                              subtitle: 'Russ • 88M plays',
                              onMorePressed: () => showSongOptions(context,  image: 'assets/artist2.png',
                              title: 'Losin Control',
                              subtitle: 'Russ • 88M plays',)
                            ),
                               SongTile(
                              image: 'assets/artist2.png',
                              title: 'Losin Control',
                              subtitle: 'Russ • 88M plays',
                              onMorePressed: () => showSongOptions(context,  image: 'assets/artist2.png',
                              title: 'Losin Control',
                              subtitle: 'Russ • 88M plays',)
                            ),
                               SongTile(
                              image: 'assets/artist2.png',
                              title: 'Losin Control',
                              subtitle: 'Russ • 88M plays',
                              onMorePressed: () => showSongOptions(context,  image: 'assets/artist2.png',
                              title: 'Losin Control',
                              subtitle: 'Russ • 88M plays',)
                            ),
                           
                            SongTile(
                              image: 'assets/artist1.png',
                              title: 'Sanctified',
                              subtitle: 'Russ • 204M plays',
                              onMorePressed: () => showSongOptions(context,  image: 'assets/artist1.png',
                              title: 'Sanctified',
                              subtitle: 'Russ • 204M plays',),
                            ),
                          ],
                        ),
                      ),
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
