import 'package:flutter/material.dart';
import '../../components/index.dart' show ProfileMainPost, ProfileTabController;
import '../../../../data/index.dart' show usersList;

class OtherProfile extends StatelessWidget {
  final int id;
  final String postOwnerName;
  final String postLocation;
  final String postProfileImageUrl;
  final List<String> imageUrls;
  final String postCaption;

  OtherProfile({
    required this.id,
    required this.postOwnerName,
    required this.postLocation,
    required this.postProfileImageUrl,
    required this.imageUrls,
    required this.postCaption,
  });



  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         ProfileMainPost(
          id: 0,
          postOwnerName: postOwnerName,
          postLocation: postLocation,
          postProfileImageUrl: postProfileImageUrl,
          imageUrls: imageUrls,
          postCaption: postCaption,
          
        ),
        ProfileTabController(),
      ],
    );
  }
}