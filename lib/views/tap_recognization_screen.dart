import 'package:flutter/material.dart';

class TagRecognizedScreen extends StatelessWidget {
  const TagRecognizedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF3A2EBB), Color(0xFF050016)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.25,
              height: size.width * 0.25,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Icon(Icons.check, color: Colors.white, size: 40),
            ),
            const SizedBox(height: 20),
            const Text(
              "Tag recognized",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                actionBtn("Play song"),
                actionBtn("Artist profile"),
                actionBtn("Playlist"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }
}

Widget actionBtn(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {},
      child: Text(text, style: const TextStyle(fontSize: 12)),
    ),
  );
}

Widget bottomBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.deepPurpleAccent,
    unselectedItemColor: Colors.white54,
    type: BottomNavigationBarType.fixed,
    currentIndex: 3,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Library'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      BottomNavigationBarItem(icon: Icon(Icons.nfc), label: 'Tap'),
    ],
  );
}
