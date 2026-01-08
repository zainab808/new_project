

import 'package:flutter/material.dart';
import 'package:new_project/components/episode.dart' show BuildTag;

class ArtistLarscreen1 extends StatelessWidget {
  const ArtistLarscreen1({super.key});

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
                        padding: EdgeInsets.symmetric(horizontal: w * 0.06),
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
                              child: _imageBtn('assets/vector.png')),
                          ],
                        ),
                      ),

                      const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
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

                      /// BOTTOM SECTION
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: const [
                      //     _TabsRow(),
                      //     SizedBox(height: 22),
                      //     Text(
                      //       "Top Songs",
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //     SizedBox(height: 20),
                      //     _SongTile(
                      //       title: "Losin Control",
                      //       plays: "88M plays",
                      //     ),
                      //     SizedBox(height: 14),
                      //     _SongTile(
                      //       title: "Sanctified",
                      //       plays: "204M plays",
                      //     ),
                      //   ],
                      // ),
             

Padding(
  padding: const EdgeInsets.all(15.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const _TabsRow(),
  
      const SizedBox(height: 18),
  
      /// 🔹 Top Songs Title
      const Text(
        "Top Songs",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
  
      const SizedBox(height: 14),
  
      /// 🎵 SONG LIST (ROW CONTAINERS)
      _songRow(
        image: 'assets/lac4.png',
        title: 'I,m Up',
        subtitle: 'LaRussell• 88M plays',
      ),
  
      // const SizedBox(height: 12),
  
     
      
      _songRow(
        image: 'assets/lac2.png',
        title: 'Cruel Summer',
        subtitle: 'LaRussell• • 192M plays',
      ),_songRow(
        image: 'assets/lac2.png',
         title: 'Cruel Summer',
        subtitle: 'LaRussell• • 192M plays',
      ),_songRow(
        image: 'assets/lac2.png',
           title: 'Cruel Summer',
        subtitle: 'LaRussell• • 192M plays',
      ),_songRow(
        image: 'assets/lac2.png',
          title: 'Cruel Summer',
        subtitle: 'LaRussell• • 192M plays',
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

  /// IMAGE BUTTON
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

class _TabText extends StatelessWidget {
  final String text;
  final bool active;

  const _TabText(this.text, this.active);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: active ? Colors.white : Colors.white60,
        fontWeight: active ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

/// SONG TILE
class _SongTile extends StatelessWidget {
  final String title;
  final String plays;

  const _SongTile({required this.title, required this.plays});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage('assets/more.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              plays,
              style: const TextStyle(color: Colors.white60),
            ),
          ],
        ),
      ],
    );
  }
}


Widget _songRow({
  required String image,
  required String title,
  required String subtitle,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      // color: Colors.white.withOpacity(0.06),
      borderRadius: BorderRadius.circular(14),
    ),
    child: Row(
      children: [
        /// Song Image
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

        /// Title + subtitle
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),

        /// Play icon image
        Image.asset(
          'assets/more.png',
          width: 22,
          height: 22,
          color: Colors.white,
        ),
      ],
    ),
  );
}
