import 'package:flutter/material.dart';

class SaveToPlaylistSheet extends StatelessWidget {
  const SaveToPlaylistSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF121212),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Save to playlist",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: Colors.white),
              ),
            ],
          ),

          const SizedBox(height: 12),

          _playlistTile("Liked Songs", "12 songs", Icons.favorite),
          _playlistTile("Vibes", "10 songs", Icons.music_note),
          _playlistTile("Memories", "8 songs", Icons.library_music),
          _playlistTile("Party Vibez", "15 songs", Icons.graphic_eq),
          _playlistTile("Late Night", "9 songs", Icons.nightlight),

          const SizedBox(height: 10),

          // New Playlist
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white12,
              child: Icon(Icons.add, color: Colors.white),
            ),
            title: const Text(
              "New playlist",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Create playlist logic
            },
          ),
        ],
      ),
    );
  }

  Widget _playlistTile(String title, String subtitle, IconData icon) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white12,
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.white60)),
      onTap: () {
        // Save song to selected playlist
      },
    );
  }
}
