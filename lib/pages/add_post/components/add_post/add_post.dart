import 'dart:io';
import 'package:flutter/material.dart';
import 'blocks/index.dart' show PostDetails, PostImagePicker, PostImage;


class AddPost extends StatefulWidget {
  final int id;
  final String postOwnerName;
  final String postLocation;
  final String postProfileImageUrl;
  final String postCaption;

  @override
  _AddPostState createState() => _AddPostState();

  const AddPost({
    Key? key,
    required this.id,
    required this.postOwnerName,
    required this.postLocation,
    required this.postProfileImageUrl,
    required this.postCaption,
  }) : super(key: key);
}

class _AddPostState extends State<AddPost> {
  final PageController _controller =
      PageController(initialPage: 0, viewportFraction: 0.93);
  final List<File> imageUrls = [];

  void setImages(List<File> images) {
    setState(() {
      imageUrls.addAll(images);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 580.0,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length + 2, // +1 for PostDetails, +1 for PostImagePicker
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return PostDetails(
                      id: widget.id,
                      postOwnerName: widget.postOwnerName,
                      postLocation: widget.postLocation,
                      postProfileImageUrl: widget.postProfileImageUrl,
                      postCaption: widget.postCaption,
                    );
                  } else if (index <= imageUrls.length) {
                    return PostImage(postImageUrl: imageUrls[index - 1].path);
                  } else {
                    return PostImagePicker(setImages: setImages);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
