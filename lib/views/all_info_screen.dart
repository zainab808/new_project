



import 'package:flutter/material.dart';
import 'package:new_project/components/artist_moresheet.dart';
import 'package:new_project/components/showsongoption.dart';
import 'package:new_project/components/tabs_row.dart';
import 'package:new_project/views/artist_9screen.dart';
import 'package:new_project/views/artist_screeen3.dart';
import 'package:new_project/views/artist_screen2.dart';
import 'package:new_project/views/songs_screen.dart';
import 'package:new_project/views/album_screen.dart';
import 'package:new_project/views/merch_screen.dart';
import 'package:new_project/views/about_screen.dart';

class ArtistProfileScreen extends StatefulWidget {
  const ArtistProfileScreen({super.key});

  /// 🔹 ALBUM DATA (unlimited)
  static final List<Map<String, String>> albums = [
    {
      'image': 'assets/album1.png',
      'title': 'Scorpion',
      'subtitle': '2023 · Album',
    },
    {
      'image': 'assets/album2.png',
      'title': 'Her Loss',
      'subtitle': '2022 · Album',
    },
    {
      'image': 'assets/album1.png',
      'title': 'For All The Dogs',
      'subtitle': '2023 · Album',
    },
    {
      'image': 'assets/album2.png',
      'title': 'Zoo',
      'subtitle': '2021 · Album',
    },
    {
      'image': 'assets/album1.png',
      'title': 'Shake Snow',
      'subtitle': '2020 · Album',
    },
  ];

  static get merch_screen => null;

  @override
  State<ArtistProfileScreen> createState() => _ArtistProfileScreenState();
}


class _ArtistProfileScreenState extends State<ArtistProfileScreen> {
    bool isFollowing = false;
  @override

  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          /// BACKGROUND
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

          /// OVERLAY
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

                          /// BACK BUTTON
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
                          const Positioned(
                            left: 16,
                            bottom: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Russ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "15.5 million followers",
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

                  /// ACTION ROW
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                    child: Row(
                      children: [
                       InkWell(
                              onTap: (){},
                              
                              
                              child:
                                                     InkWell(
                                onTap: (){
                                       Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Artist6ProfileScreen(),
        ),);
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/jack.png"))
                                  ),
                                
                                ),
                              )),
       
        
                        const SizedBox(width: 12),
                        // Container(
                        //   padding: const EdgeInsets.symmetric(
                        //       horizontal: 30, vertical: 7),
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(30),
                        //   ),
                        //   child: 
                        //   const Text(
                        //     "Follow",
                        //     style: TextStyle(fontWeight: FontWeight.bold),
                        //   ),
                        // ),
          

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






                        const Spacer(),
                        InkWell(onTap: (){},
                          
                          child:



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
  child: _circleImage('assets/more.png'),
)),

                          //  _circleImage('assets/more.png')),
                         SizedBox(width: 18),
                        _circleImage('assets/shuffle.png'),
                        const SizedBox(width: 18),
                        _circleImage('assets/vector.png'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),

                  /// LATEST TRACK
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: InkWell(
                      onTap: (){
                              Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Artist9screen()));

                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: const [
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

                  const SizedBox(height: 20),

                  /// TABS
                  // customtab
                CustomTabsRow(
  selectedIndex: 0,
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

                  /// TOP SONGS
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Top Songs",
                      style:
                          TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),

                  _songRow(
                    context: context,
                    image: 'assets/artist2.png',
                    title: 'Losin Control',
                    subtitle: 'Russ • 88M plays',
                  ),
                  _songRow(
                       context: context,
                    image: 'assets/artist1.png',
                    title: 'Sanctified',
                    subtitle: 'Russ • 204M plays',
                  ),
                   _songRow(
                       context: context,
                    image: 'assets/artist1.png',
                    title: 'Sanctified',
                    subtitle: 'Russ • 204M plays',
                  ), _songRow(
                       context: context,
                    image: 'assets/artist1.png',
                    title: 'Sanctified',
                    subtitle: 'Russ • 204M plays',
                  ),

_songRow(
                       context: context,
                    image: 'assets/artist1.png',
                    title: 'Sanctified',
                    subtitle: 'Russ • 204M plays',
                  ),
_songRow(
                       context: context,
                    image: 'assets/artist1.png',
                    title: 'Sanctified',
                    subtitle: 'Russ • 204M plays',
                  ),
_songRow(
                       context: context,
                    image: 'assets/artist1.png',
                    title: 'Sanctified',
                    subtitle: 'Russ • 204M plays',
                  ),
_songRow(
                       context: context,
                    image: 'assets/artist1.png',
                    title: 'Sanctified',
                    subtitle: 'Russ • 204M plays',
                  ),


                  const SizedBox(height: 22),

                  /// POPULAR ALBUMS
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        const Text(
                          "Popular Albums",
                          style:
                              TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const Spacer(),
                                  InkWell(
                                    onTap: (){
                                       Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Artist5ProfileScreen()),
            );
                                    },
                                    child: const Text(
                                                              "See All",
                                                              style:
                                                                  TextStyle(color: Colors.white, fontSize: 14),
                                                            ),
                                  ),
               
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),

                  SizedBox(
                    height: 190,
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

                  const SizedBox(height: 20),



                  
                  /// about
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Text(
                      "About",
                      style:
                          TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
 const SizedBox(height: 15),

                  /// ================= ABOUT (VERIFIED INSIDE) =================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/jack3.png",
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),

                          Container(
                            height: 180,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.9),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),

                          /// VERIFIED ARTIST
                          Positioned(
                            top: 12,
                            left: 12,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                // color:
                                //     Colors.black.withOpacity(0.6),
                                borderRadius:
                                    BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: const [
                                  Icon(Icons.verified,
                                      color: Colors.blue, size: 16),
                                  SizedBox(width: 5),
                                  Text(
                                    "Verified artist",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const Positioned(
                            left: 14,
                            right: 14,
                            bottom: 14,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "15,564,970 Followers",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight:
                                          FontWeight.bold),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "Russell Vitale, known professionally as Russ, is an American rapper, singer, songwriter, and producer.",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 26),

                  /// ================= FANS ALSO LIKE =================
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Fans also like",
                      style:
                          TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),

                  const SizedBox(height: 14),

                  SizedBox(
                    height: 110,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15),
                      children: const [
                        _FanItem("assets/f1.png", "Vic Mensa"),
                        _FanItem("assets/f2.png", "Beyonce"),
                        _FanItem("assets/f3.png", "Snoop Dogg"),
                        _FanItem("assets/f4.png", "Drake"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ================= HELPERS =================

Widget _circleImage(String asset) {
  return CircleAvatar(
    backgroundColor: Colors.transparent,
    maxRadius: 12,
    backgroundImage: AssetImage(asset),
  );
}

/// ================= TABS =================


// class _TabsRowState extends State<_TabsRow> {
//   int selectedIndex = 0;

//   final List<String> tabs = [
//     "All",
//     "Songs",
//     "Album",
//     "Merch",
//     "About",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Row(
//         children: List.generate(tabs.length, (index) {
//           final isActive = selectedIndex == index;
//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedIndex = index;
//               });
//             },
//             child: Container(
//               margin: const EdgeInsets.only(right: 10),
//               padding: const EdgeInsets.symmetric(
//                   horizontal: 14, vertical: 6),
//               decoration: BoxDecoration(
//                 color: isActive
//                     ? Colors.white
//                     : Colors.white.withOpacity(0.06),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Text(
//                 tabs[index],
//                 style: TextStyle(
//                   color: isActive ? Colors.black : Colors.white,
//                   fontSize: 13,
//                   fontWeight:
//                       isActive ? FontWeight.w600 : FontWeight.normal,
//                 ),
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }

/// ================= SONG ROW =================
/// 
/// 
Widget _songRow({
  required BuildContext context, // 👈 ADD THIS
  required String image,
  required String title,
  required String subtitle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            width: 55,
            height: 55,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.more_vert, color: Colors.white),
          onPressed: () {
            showSongOptions(
              context,
              image: image,
              title: title,
              subtitle: subtitle,
            );
          },
        ),
      ],
    ),
  );
}







// Widget _songRow({
//   required String image,
//   required String title,
//   required String subtitle,
// }) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
//     child: Row(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Image.asset(image,
//               width: 55, height: 55, fit: BoxFit.cover),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(title,
//                   style: const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600)),
//               Text(subtitle,
//                   style: const TextStyle(
//                       color: Colors.white60, fontSize: 12)),
//             ],
//           ),
//         ),
//              IconButton(
//   icon: const Icon(Icons.more_vert),
//   onPressed: () {
//     showSongOptions(
//       context,
//       image: image,
//       title: title,
//       subtitle: subtitle,
//     );
//   },
// ),
//       ],
//     ),
//   );
// }

/// ================= ALBUM CARD =================
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

/// ================= FAN ITEM =================
class _FanItem extends StatelessWidget {
  final String image;
  final String name;
  const _FanItem(this.image, this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(image,
                width: 85, height: 85, fit: BoxFit.cover),
          ),
          const SizedBox(height: 6),
          Text(name,
              style: const TextStyle(
                  color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}
