import 'package:flutter/material.dart';
import 'package:new_project/components/customqueebottumsheet.dart';
import 'package:new_project/components/savetoplaylistsheet.dart';
import 'package:new_project/views/album_screen.dart';
import 'package:new_project/views/songs_screen.dart';
import 'package:share_plus/share_plus.dart';

void showSongOptions(
  BuildContext context, {
  required String image,
  required String title,
  required String subtitle,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.grey[900],
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(image, width: 55, height: 55, fit: BoxFit.cover),
              ),
              title: Text(title,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
              subtitle: Text(subtitle,
                  style: const TextStyle(color: Colors.white60)),
            ),
            const Divider(color: Colors.white38),



            // ... baqi ListTiles same


                      ListTile(
              leading: const Icon(Icons.share, color: Colors.white),
              title:
                  const Text('Share', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Share.share("Check out this song: $title 🎵");
              },
            ),

            ListTile(
              leading:
                  const Icon(Icons.playlist_add, color: Colors.white),
              title: const Text(
                'Add to Playlist',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (_) =>  SaveToPlaylistSheet(),
                );
              },
            ),

            ListTile(
              leading:
                  const Icon(Icons.queue_music, color: Colors.white),
              title: const Text(
                'Add to Queue',
                style: TextStyle(color: Colors.white),
              ),
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

            ListTile(
              leading: const Icon(Icons.album, color: Colors.white),
              title: const Text(
                'Go to Album',
                style: TextStyle(color: Colors.white),
              ),
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

            ListTile(
              leading: const Icon(Icons.person, color: Colors.white),
              title: const Text(
                'Go to Artist',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {}
          
            ),
     
          ],
        ),
      );
    },
  );
}
