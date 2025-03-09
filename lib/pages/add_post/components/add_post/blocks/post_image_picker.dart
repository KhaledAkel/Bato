import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'post_image.dart';

class PostImagePicker extends StatefulWidget {
  final Function(List<File>) setImages;

  const PostImagePicker({Key? key, required this.setImages}) : super(key: key);

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
        widget.setImages(_imageFiles);
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.add_a_photo_outlined, size: 80, color: Colors.grey[700]),
              Text("For the best results, we recommend using your phone for photos with a vertical resolution.", textAlign: TextAlign.center  ,style: TextStyle(color: Colors.grey[700], fontSize: 8)),
            ],
          ),
        ),
      ),
    );
  }
}