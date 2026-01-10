import 'package:flutter/material.dart';

class Artist9screen extends StatelessWidget {
  const Artist9screen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final merch = [
      'assets/jack1.png',
      'assets/jack2.png',
      'assets/jack1.png',
      'assets/jack2.png',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          /// Background
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// Dark overlay
          Container(
            color: Colors.black.withOpacity(0.7),
          ),

          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),

                  /// ================= HERO ALBUM CARD =================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        image: const DecorationImage(
                          image: AssetImage('assets/artist4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          /// Gradient overlay
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.25),
                                  Colors.black.withOpacity(0.9),
                                ],
                              ),
                            ),
                          ),

                          /// Back button
                          Positioned(
                            top: 16,
                            right: 16,
                            child: InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),

                          /// Text content
                          Positioned(
                            left: 20,
                            bottom: 20,
                            right: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "SANTIAGO",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.3,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "Russ",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Single • 2025",
                                  style: TextStyle(
                                    color: Colors.white54,
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

                  /// ================= ACTION ROW =================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.green,
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 14),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white.withOpacity(0.1),
                          child: const Icon(
                            Icons.shuffle,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.more_vert, color: Colors.white70),
                      ],
                    ),
                  ),

                  const SizedBox(height: 18),

                  /// ================= LATEST TRACK =================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/Rectangle.png'),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              "Check out the latest track",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios,
                              size: 16, color: Colors.white70),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),

                  /// ================= TABS =================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: const [
                        _TabItem(title: "All", selected: false),
                        _TabItem(title: "Songs", selected: false),
                        _TabItem(title: "Album", selected: false),
                        _TabItem(title: "Merch", selected: true),
                        _TabItem(title: "About", selected: false),
                      ],
                    ),
                  ),

                  const SizedBox(height: 22),

                  /// ================= MERCH TITLE =================
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Merch",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// ================= MERCH GRID =================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: merch.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 14,
                        mainAxisSpacing: 14,
                        childAspectRatio: 0.72,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white.withOpacity(0.05),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    merch[index],
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "RUSS Hoodie",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "\$45",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 13),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ================= TAB WIDGET =================
class _TabItem extends StatelessWidget {
  final String title;
  final bool selected;

  const _TabItem({required this.title, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.white : Colors.white54,
          fontSize: 15,
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
