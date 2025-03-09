import 'package:flutter/material.dart';
import 'dart:io';
import '../../../../../theme/index.dart' show AppColors;

class PostImage extends StatelessWidget {
  final String postImageUrl;

  const PostImage({Key? key, required this.postImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.file(
          File(postImageUrl),
          fit: BoxFit.cover,
          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
            return Container(
              color: Colors.grey[300],
              child: Center(
                child: Icon(Icons.error),
              ),
            );
          },
        ),
      ),
    );
  }
}