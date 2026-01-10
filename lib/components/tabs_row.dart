// import 'package:flutter/material.dart';
// import 'package:new_project/views/artist_screeen3.dart';
// import 'package:new_project/views/artist_screen1.dart';
// import 'package:new_project/views/artist_screen2.dart';
// import 'package:new_project/views/artist_screen4.dart';
// import 'package:new_project/views/artist_screen5.dart';


// // Dummy screens, replace with your actual screens


// class TabsRow extends StatefulWidget {
//   const TabsRow({super.key});

//   @override
//   State<TabsRow> createState() => _TabsRowState();
// }

// class _TabsRowState extends State<TabsRow> {
//   int selectedIndex = 0;

//   final List<String> tabs = [
//     "All",
//     "Songs",
//     "Album",
//     "Merch",
//     "About",
//   ];

//   final List<Widget> screens = [
//     const ArtistProfileScreen(),
//     const Artist3ProfileScreen(),
//     const Artist2ProfileScreen(),
//     const Artist4ProfileScreen(),
//     const Artist5ProfileScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Show all tabs
//       children: List.generate(tabs.length, (index) {
//         final bool isActive = selectedIndex == index;

//         return InkWell(
//           borderRadius: BorderRadius.circular(20),
//           onTap: () {
//             setState(() {
//               selectedIndex = index;
//             });
//             _onTabTap(context, index);
//           },
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
//             decoration: BoxDecoration(
//               color: isActive
//                   ? Colors.white
//                   : Colors.white.withOpacity(0.06),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Text(
//               tabs[index],
//               style: TextStyle(
//                 color: isActive ? Colors.black : Colors.white,
//                 fontSize: 13,
//                 fontWeight:
//                     isActive ? FontWeight.w600 : FontWeight.normal,
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }

//   void _onTabTap(BuildContext context, int index) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (_) => screens[index]),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:new_project/components/episode.dart';
// import 'package:tapplay_project/components/build_tag.dart';

class CustomTabsRow extends StatefulWidget {
  final int selectedIndex;
  final List<String> tabs;
  final List<Widget> screens;

  const CustomTabsRow({
    super.key,
    required this.selectedIndex,
    required this.tabs,
    required this.screens,
  });

  @override
  State<CustomTabsRow> createState() => _CustomTabsRowState();
}

class _CustomTabsRowState extends State<CustomTabsRow> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(widget.tabs.length, (index) {
          final bool isActive = currentIndex == index;
      
          return InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              setState(() {
                currentIndex = index;
              });
      
              // Navigate to the screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => widget.screens[index]),
              );
            },
            child: BuildTag(
              text: widget.tabs[index],
              bgColor: isActive ? Colors.white : const Color(0xFF2A3352),
              textColor: isActive ? Colors.black : Colors.white,
            ),
          );
        }),
      ),
    );
  }
}