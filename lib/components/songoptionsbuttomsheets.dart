import 'package:flutter/material.dart';
import 'package:new_project/components/customqueebottumsheet.dart';
import 'package:new_project/components/savetoplaylistsheet.dart';
import 'package:new_project/views/album_screen.dart';
import 'package:new_project/views/songs_screen.dart';
import 'package:share_plus/share_plus.dart';

import '../views/artist_9screen.dart';
import '../views/artist_screen2.dart';


class SongOptionsBottomSheet extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const SongOptionsBottomSheet({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF121212),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Wrap(
        children: [
          /// DRAG HANDLE
          Center(
            child: Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          /// SONG TILE (TOP)
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: const TextStyle(color: Colors.white60),
            ),
          ),

          const Divider(color: Colors.white24),

          _optionTile(
            icon: Icons.share,
            title: "Share",
            onTap: () {
              Navigator.pop(context);
              Share.share("Check out this song: $title 🎵");
            },
          ),

          _optionTile(
            icon: Icons.playlist_add,
            title: "Add to Playlist",
            onTap: () {
              Navigator.pop(context);
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                builder: (_) => const SaveToPlaylistSheet(),
              );
            },
          ),

          _optionTile(
            icon: Icons.queue_music,
            title: "Add to Queue",
            onTap: () {
              Navigator.pop(context);
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                builder: (_) =>  CustomQueueBottomSheet(),
              );
            },
          ),

          _optionTile(
            icon: Icons.album,
            title: "Go to Album",
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const Artist5ProfileScreen(),
                ),
              );
            },
          ),

          _optionTile(
            icon: Icons.person,
            title: "Go to Artist",
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const Artist4ProfileScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _optionTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }
}
