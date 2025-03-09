import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'post_image.dart';

class PostImagePicker extends StatefulWidget {
  @override
  _PostImagePickerState createState() => _PostImagePickerState();
}

class _PostImagePickerState extends State<PostImagePicker> {
  final List<File> _imageFiles = [];

  Future<void> _pickImage() async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imageFiles.add(File(pickedFile.path));
        });
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ..._imageFiles.map((file) => PostImage(postImageUrl: file.path)).toList(),
          GestureDetector(
            onTap: _pickImage,
            child: Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Icon(Icons.add, size: 40, color: Colors.grey[700]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}