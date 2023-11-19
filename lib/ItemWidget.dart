import 'package:flutter/material.dart';
import 'PhotoDetailScreen.dart';
import 'PhotoListScreen.dart';

class PhotoItem extends StatelessWidget {
  const PhotoItem({super.key, required this.photo});

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhotoDetailScreen(photo: photo),
            ),
          );
        },
        leading: Image.network(
          photo.thumbnailUrl,
          width: 80,
        ),
        title: Text(photo.title),
      ),
    );
  }
}