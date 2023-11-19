import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'PhotoListScreen.dart';
import 'ItemWidget.dart';

class PhotoDetailScreen extends StatelessWidget {
  const PhotoDetailScreen({super.key, required this.photo});

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Detail"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              width: double.infinity,
              height: 200,
              child: Image.network(
                photo.thumbnailUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Title : ${photo.title}',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'ID : ${photo.id}',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}