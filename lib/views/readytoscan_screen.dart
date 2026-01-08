// // // import 'package:flutter/material.dart';

// // // class ReadyToScanScreen extends StatelessWidget {
// // //   const ReadyToScanScreen({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final size = MediaQuery.of(context).size;

// // //     return Scaffold(
// // //       backgroundColor: Colors.black,
// // //       body: Container(
// // //         width: size.width,
// // //         height: size.height,
// // //         decoration: const BoxDecoration(
// // //           gradient: LinearGradient(
// // //             colors: [Color(0xFF3A2EBB), Color(0xFF050016)],
// // //             begin: Alignment.topCenter,
// // //             end: Alignment.bottomCenter,
// // //           ),
// // //         ),
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Container(
// // //               width: size.width * 0.25,
// // //               height: size.width * 0.25,
// // //               decoration: BoxDecoration(
// // //                 shape: BoxShape.circle,
// // //                 border: Border.all(color: Colors.white, width: 2),
// // //               ),
// // //               child: const Icon(Icons.nfc, color: Colors.white, size: 40),
// // //             ),
// // //             const SizedBox(height: 20),
// // //             const Text(
// // //               "Ready to scan",
// // //               style: TextStyle(color: Colors.white, fontSize: 18),
// // //             ),
// // //             const SizedBox(height: 6),
// // //             const Text(
// // //               "Hold your device near the NFC tag",
// // //               style: TextStyle(color: Colors.white70, fontSize: 13),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //       bottomNavigationBar: bottomBar(),
// // //     );
// // //   }
// // // }

// // // Widget bottomBar() {
// // //   return BottomNavigationBar(
// // //     backgroundColor: Colors.black,
// // //     selectedItemColor: Colors.deepPurpleAccent,
// // //     unselectedItemColor: Colors.white54,
// // //     type: BottomNavigationBarType.fixed,
// // //     currentIndex: 3,
// // //     items: const [
// // //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
// // //       BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Library'),
// // //       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
// // //       BottomNavigationBarItem(icon: Icon(Icons.nfc), label: 'Tap'),
// // //     ],
// // //   );
// // // }








// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: ReadyToScanScreen(),
// //     );
// //   }
// // }

// // class ReadyToScanScreen extends StatelessWidget {
// //   const ReadyToScanScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final size = MediaQuery.of(context).size;

// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           // 🔹 Background Image
// //           Image.asset(
// //             'assets/background.jpg',
// //             width: size.width,
// //             height: size.height,
// //             fit: BoxFit.cover,
// //           ),

// //           // 🔹 Dark Overlay
// //           Container(
// //             width: size.width,
// //             height: size.height,
// //             color: Colors.black.withOpacity(0.45),
// //           ),

// //           // 🔹 Center Content
// //           Center(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                Image.asset(
// //   'assets/icon1.png',
// //   width: size.width * 0.28,
// //   height: size.width * 0.28,
// //   fit: BoxFit.contain,
// // ),
            
// //                 const SizedBox(height: 22),
            
// //                 const Text(
// //                   "Ready to scan",
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 18,
// //                     fontWeight: FontWeight.w600,
// //                   ),
// //                 ),
            
// //                 const SizedBox(height: 6),
            
// //                 const Text(
// //                   "Hold your device near the NFC tag",
// //                   style: TextStyle(
// //                     color: Colors.white70,
// //                     fontSize: 13,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),

// //       // 🔹 Bottom Navigation Bar
// //       bottomNavigationBar: const ImageBottomNavBar(currentIndex: 3),
// //     );
// //   }
// // }

// // /// 🔹 Bottom Navigation Bar With Image Icons
// // class ImageBottomNavBar extends StatelessWidget {
// //   final int currentIndex;

// //   const ImageBottomNavBar({super.key, required this.currentIndex});

// //   @override
// //   Widget build(BuildContext context) {
// //     return BottomNavigationBar(
// //       backgroundColor: Colors.black,
// //       type: BottomNavigationBarType.fixed,
// //       currentIndex: currentIndex,
// //       selectedItemColor: Color(0xff372695),
// //       unselectedItemColor: Colors.white,
// //       items: [
// //         navItem('assets/home.png', 'Home'),
// //         navItem('assets/Library.png', 'Library'),
// //         navItem('assets/Profile.png', 'Profile'),
// //         navItem('assets/Tap.png', 'Tap'),
// //       ],
// //     );
// //   }

// //   BottomNavigationBarItem navItem(String iconPath, String label) {
// //     return BottomNavigationBarItem(
// //       label: label,
// //       icon: Image.asset(
// //         iconPath,
// //         width: 22,
// //         height: 22,
// //         color: Colors.white,
// //       ),
// //       activeIcon: Image.asset(
// //         iconPath,
// //         width: 24,
// //         height: 24,
// //         color: Colors.deepPurpleAccent,
// //       ),
// //     );
// //   }
// // }










// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ReadyToScanScreen(),
//     );
//   }
// }

// class ReadyToScanScreen extends StatefulWidget {
//   const ReadyToScanScreen({super.key});
//   @override
//   State<ReadyToScanScreen> createState() => _ReadyToScanScreenState();
// }

// class _ReadyToScanScreenState extends State<ReadyToScanScreen> {
//   int _currentIndex = 3;

//   final List<Map<String, String>> navItems = [
//     {'icon': 'assets/home.png', 'label': 'Home'},
//     {'icon': 'assets/Library.png', 'label': 'Library'},
//     {'icon': 'assets/Profile.png', 'label': 'Profile'},
//     {'icon': 'assets/Tap.png', 'label': 'Tap'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Scaffold(
//       body:
//        Stack(
//         children: [
//           // Background image
//           Image.asset(
//             'assets/background.jpg',
//             width: size.width,
//             height: size.height,
//             fit: BoxFit.cover,
//           ),



        
//         //   Container(
//         // width: size.width,
//         // height: size.height,
//         // decoration: const BoxDecoration(
//         //   gradient: LinearGradient(
//         //     begin: Alignment.topCenter,
//         //     end: Alignment.bottomCenter,
//         //     colors: [
//         //       Color(0xFF3A2EBB), // Top purple (screenshot match)
//         //       Color(0xFF0A0018), // Bottom almost black
//         //     ],
//         //   ),
//         // ),),

//           Container(
//             color: Colors.black.withOpacity(0.45),
//           ),
//           // Center icon + text
//           Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Image.asset(
//                   'assets/icon1.png',
//                   width: size.width * 0.18,
//                   fit: BoxFit.contain,
//                 ),
//                 const SizedBox(height: 22),
//                 const Text(
//                   "Ready to scan",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 const SizedBox(height: 6),
//                 const Text(
//                   "Hold your device near the NFC tag",
//                   style: TextStyle(color: Colors.white70, fontSize: 13),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
    
//       // Custom Bottom Navigation Bar
//       bottomNavigationBar: Container(
//         color: Colors.black,
//         height: 70,
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: List.generate(navItems.length, (index) {
//             bool isActive = index == _currentIndex;
//             return GestureDetector(
//               onTap: () {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 250),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//                 decoration: isActive
//                     ? BoxDecoration(
//                         color: Color(0xff372695),
//                         borderRadius: BorderRadius.circular(20),
//                       )
//                     : null,
//                 child: isActive
//                     ? Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Image.asset(
//                             navItems[index]['icon']!,
//                             width: 22,
//                             height: 22,
//                             color: Colors.white,
//                           ),
//                           const SizedBox(width: 6),
//                           Text(
//                             navItems[index]['label']!,
//                             style: const TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500),
//                           ),
//                         ],
//                       )
//                     : Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Image.asset(
//                             navItems[index]['icon']!,
//                             width: 22,
//                             height: 22,
//                             color: Colors.white,
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             navItems[index]['label']!,
//                             style: const TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500),
//                           ),
//                         ],
//                       ),
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReadyToScanScreen(),
    );
  }
}

class ReadyToScanScreen extends StatefulWidget {
  const ReadyToScanScreen({super.key});

  @override
  State<ReadyToScanScreen> createState() => _ReadyToScanScreenState();
}

class _ReadyToScanScreenState extends State<ReadyToScanScreen> {
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
          // Background image
          Image.asset(
            'assets/background.jpg',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),

          // Black overlay
          Container(
            color: Colors.black.withOpacity(0.45),
          ),

          // Center icon + text
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: size.height * 0.08), // ⬅ thoda neeche

                Image.asset(
                  'assets/icon1.png',
                  width: size.width * 0.22, // ⬅ thodi badi
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 22),
                const Text(
                  "Ready to scan",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 17,
                      fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Hold your device near the NFC tag",
                     

                  style: TextStyle(
                      color: Color(0xffFFFFFF),

                     fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),

      // Custom Bottom Navigation Bar
      // bottomNavigationBar: Container(
      //   height: 70,
      //   padding: const EdgeInsets.symmetric(horizontal: 12),
      //   decoration: BoxDecoration(
      //     color: Colors.black,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black.withOpacity(0.5),
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
      //                       width: 18,
      //                       height: 18,
      //                       color: Colors.white,
      //                     ),
      //                     const SizedBox(height: 4),
      //                     Text(
      //                       navItems[index]['label']!,
      //                       style:  TextStyle(
      //                         fontSize: 10,
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.w400),
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
