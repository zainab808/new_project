

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
class ArtistLar3screen extends StatefulWidget {
   
  const ArtistLar3screen({super.key});

  @override
  State<ArtistLar3screen> createState() =>
      _ArtistLar3screenState();
}

class _ArtistLar3screenState
    extends State<ArtistLar3screen> {
      
  Song? selectedSong;

  final List<Song> songs = [
    Song(
      image: 'assets/lac4.png',
        title: 'I,m Up',
        subtitle: 'LaRussell• 88M plays',
    ),
   
     Song(
     image: 'assets/lac2.png',
        title: 'Cruel Summer',
        subtitle: 'LaRussell• • 192M plays',
    ),
   
    Song(
     image: 'assets/lac2.png',
        title: 'Cruel Summer',
        subtitle: 'LaRussell• • 192M plays',
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
                        padding: EdgeInsets.symmetric(horizontal:5),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/lac.png'),
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
                                      "LaRussell",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "21 million followers",
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
                                  image: DecorationImage(image: AssetImage("assets/jack2.png"))
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
                              child: _imageBtn('assets/Solid.png')),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
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
                        Image(image: AssetImage("assets/lac6.png")),
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
                        ? Color(0xff00FF44)// ✅ ONLY HERE
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
          const Icon(Icons.more_vert,
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
      color: const Color(0xFF1C2236),
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
                "LaRussell",
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
        const Icon(Icons.pause_circle_filled,
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
    final w = MediaQuery.of(context).size.width;

    // small horizontal spacing
    final double spacing = w * 0.02;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: w * 0.04, vertical: 5),
      child: Row(
        children: [
          _tab("All", isActive: true),
          SizedBox(width: spacing),
          _tab("Songs", isActive: false),
          SizedBox(width: spacing),
          _tab("Album", isActive: false),
          SizedBox(width: spacing),
          _tab("Merch", isActive: false),
          SizedBox(width: spacing),
          _tab("About", isActive: false),
        ],
      ),
    );
  }

  Widget _tab(String text, {required bool isActive}) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6), // small compact tab
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white.withOpacity(0.06),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isActive ? Colors.black : Colors.white,
            fontSize: 13, // slightly smaller font
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
