import 'package:flutter/material.dart';
import './components/index.dart' show ProfileMainPost, ProfileTabController;
import '../../data/index.dart' show usersList;

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         ProfileMainPost(
          id: 0,
          postOwnerName: usersList[0].name,
          postLocation: usersList[0].currentCity,
          postProfileImageUrl: usersList[0].avatar,
          imageUrls: usersList[0].imageUrls,
          postCaption: usersList[0].biography,
          
        ),
        ProfileTabController(),
      ],
    );
  }
}