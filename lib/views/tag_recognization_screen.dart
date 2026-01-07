// import 'package:flutter/material.dart';

// class TagRecognizedScreen extends StatelessWidget {
//   const TagRecognizedScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Container(
//         width: size.width,
//         height: size.height,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF3A2EBB), Color(0xFF050016)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: size.width * 0.25,
//               height: size.width * 0.25,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.green,
//               ),
//               child: const Icon(Icons.check, color: Colors.white, size: 40),
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "Tag recognized",
//               style: TextStyle(color: Colors.white, fontSize: 18),
//             ),
//             const SizedBox(height: 20),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 actionBtn("Play song"),
//                 actionBtn("Artist profile"),
//                 actionBtn("Playlist"),
//               ],
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: bottomBar(),
//     );
//   }
// }

// Widget actionBtn(String text) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 6),
//     child: ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.white10,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//       ),
//       onPressed: () {},
//       child: Text(text, style: const TextStyle(fontSize: 12)),
//     ),
//   );
// }

// Widget bottomBar() {
//   return BottomNavigationBar(
//     backgroundColor: Colors.black,
//     selectedItemColor: Colors.deepPurpleAccent,
//     unselectedItemColor: Colors.white54,
//     type: BottomNavigationBarType.fixed,
//     currentIndex: 3,
//     items: const [
//       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//       BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Library'),
//       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//       BottomNavigationBarItem(icon: Icon(Icons.nfc), label: 'Tap'),
//     ],
//   );
// }














import 'package:flutter/material.dart';

class TagRecognizedScreen extends StatefulWidget {
  const TagRecognizedScreen({super.key});

  @override
  State<TagRecognizedScreen> createState() => _TagRecognizedScreenState();
}

class _TagRecognizedScreenState extends State<TagRecognizedScreen> {
  int _currentIndex = 3;

  final List<Map<String, String>> navItems = [
    {'icon': 'assets/home.png', 'label': 'Home'},
    {'icon': 'assets/Library.png', 'label': 'Library'},
    {'icon': 'assets/Profile.png', 'label': 'Profile'},
    {'icon': 'assets/Tap.png', 'label': 'Tap'},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 BACKGROUND IMAGE (Responsive)
          Image.asset(
            'assets/background.jpg', // ⬅ apni image yahan
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),

          /// 🔹 Optional dark overlay (better contrast)
          Container(
            color: Colors.black.withOpacity(0.45),
          ),

          /// 🔹 CENTER CONTENT
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// ✅ Tick Image (no circle)
                Image.asset(
                  'assets/icon3.png', // ⬅ tick image
                  width: size.width * 0.22,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 20),

                const Text(
                  "Tag recognized",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 22),

              Wrap(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    actionBtn("Play song"),
                    actionBtn("Artist profile"),
                    actionBtn("Playlist"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      /// 🔹 CUSTOM 100% RESPONSIVE BOTTOM NAV BAR
      bottomNavigationBar: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final itemWidth = constraints.maxWidth / navItems.length;

            return Container(
              height: 72,
              color: Colors.black,
              child: Row(
                children: List.generate(navItems.length, (index) {
                  final isActive = index == _currentIndex;

                  return SizedBox(
                    width: itemWidth,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 10),
                        decoration: BoxDecoration(
                          color: isActive
                              ? const Color(0xff372695)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: isActive
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    navItems[index]['icon']!,
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    navItems[index]['label']!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    navItems[index]['icon']!,
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    navItems[index]['label']!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// 🔹 ACTION BUTTON
Widget actionBtn(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white10,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, color: Colors.white),
      ),
    ),
  );
}
