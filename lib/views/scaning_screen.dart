





import 'package:flutter/material.dart';



class ScanningScreen extends StatefulWidget {
  const ScanningScreen({super.key});

  @override
  State<ScanningScreen> createState() => _ScanningScreenState();
}

class _ScanningScreenState extends State<ScanningScreen> {
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
          // 🔹 Background image
          Image.asset(
            'assets/background.jpg', // replace with your image path
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),

          // 🔹 Optional dark overlay
          Container(
            color: Colors.black.withOpacity(0.45),
          ),

          // 🔹 Center content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Scanning...",
                  style: TextStyle(
                    fontFamily: "Sora",
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Hold your phone steady",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: size.width * 0.4,
                  child: LinearProgressIndicator(
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.white),
                    backgroundColor: Colors.white12,
                    minHeight: 4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // // 🔹 Custom Bottom Navigation Bar
      //   bottomNavigationBar: Container(
      //   height: 70,
      //   padding: const EdgeInsets.symmetric(horizontal: 12),
      //   decoration: BoxDecoration(
      //     color: Colors.black,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.white.withOpacity(0.5),
      //         blurRadius: 8,
      //       )
      //     ],
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: List.generate(navItems.length, (index) {
      //       bool isActive = index == _currentIndex;
      //       return GestureDetector(
      //         onTap: () {
      //           setState(() {
      //             _currentIndex = index;
      //           });
      //         },
      //         child: AnimatedContainer(
      //           duration: const Duration(milliseconds: 250),
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      //           decoration: isActive
      //               ? BoxDecoration(
      //                   color: const Color(0xff372695),
      //                   borderRadius: BorderRadius.circular(20),
      //                 )
      //               : null,
      //           child: isActive
      //               ? Row(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     Image.asset(
      //                       navItems[index]['icon']!,
      //                       width: 22,
      //                       height: 22,
      //                       color: Colors.white,
      //                     ),
      //                     const SizedBox(width: 6),
      //                     Text(
      //                       navItems[index]['label']!,
      //                       style: const TextStyle(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.w500),
      //                     ),
      //                   ],
      //                 )
      //               : Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     Image.asset(
      //                       navItems[index]['icon']!,
      //                       width: 22,
      //                       height: 22,
      //                       color: Colors.white,
      //                     ),
      //                     const SizedBox(height: 4),
      //                     Text(
      //                       navItems[index]['label']!,
      //                       style: const TextStyle(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.w500),
      //                     ),
      //                   ],
      //                 ),
      //         ),
      //       );
      //     }),
      //   ),
      // ),
 
    );
  }
}
