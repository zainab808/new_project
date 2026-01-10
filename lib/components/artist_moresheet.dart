import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../views/artist_screen2.dart';
import '../views/album_screen.dart';
import '../views/merch_screen.dart';

class ArtistMoreSheet extends StatelessWidget {
  final String artistName;
  final String artistImage;

  const ArtistMoreSheet({
    super.key,
    required this.artistName,
    required this.artistImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xff1C1C1E),
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          /// ===== TOP HEADER =====
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(artistImage), // Image instead of icon
              ),
              const SizedBox(width: 10),
              Text(
                artistName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),

          const Divider(color: Colors.white24),

          /// ===== OPTIONS =====
          _bottomSheetItem(
            imageAsset: 'assets/share.png', // image instead of icon
            title: "Share",
            onTap: () {
               Navigator.pop(context);
                Share.share("Check out this song: title 🎵");
              // Share logic
            },
          ),
          _bottomSheetItem(
            imageAsset: 'assets/album.png',
            title: "Go to Album",
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Artist5ProfileScreen()),
              );
            },
          ),
          _bottomSheetItem(
            imageAsset: 'assets/cart.png',
            title: "Check artist products",
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Artist6ProfileScreen()),
              );
            },
          ),

          const Divider(color: Colors.white24),

          _bottomSheetItem(
            imageAsset: 'assets/cross.png',
            title: "Stop Following",
          
            onTap: () {
              Navigator.pop(context);
              // Stop following logic
            },
          ),
        ],
      ),
    );
  }

  Widget _bottomSheetItem({
    required String imageAsset,
    required String title,
    required VoidCallback onTap,
    bool isDanger = false,
  }) {
    return ListTile(
      leading: Image.asset(
        imageAsset,
        width: 24,
        height: 24,
        color: isDanger ? Colors.red : null, // red tint if danger
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isDanger ? Colors.red : Colors.white,
          fontSize: 14,
        ),
      ),
      onTap: onTap,
    );
  }
}
