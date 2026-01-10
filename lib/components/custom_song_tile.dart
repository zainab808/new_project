import 'package:flutter/material.dart';
import 'package:new_project/components/showsongoption.dart';
import 'package:new_project/views/artist_9screen.dart';




/// Custom Song Tile
class SongTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onMorePressed;

  const SongTile({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onMorePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const Artist9screen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image, width: 55, height: 55, fit: BoxFit.cover),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15)),
                  const SizedBox(height: 4),
                  Text(subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white60, fontSize: 12)),
                ],
              ),
            ),
           IconButton(
  icon: const Icon(Icons.more_vert),
  onPressed: () {
    showSongOptions(
      context,
      image: image,
      title: title,
      subtitle: subtitle,
    );
  },
),
          ],
        ),
      ),
    );
  }
}
