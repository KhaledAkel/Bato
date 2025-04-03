import 'package:flutter/material.dart';
import '../../components/index.dart' show OtherProfileMainPost, ProfileTabController;
import '../../../../data/index.dart' show usersList;
import '../../../../theme/index.dart' show AppColors;

class OtherProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(usersList[1].name, style: TextStyle(
          color: AppColors.text,
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),),
        backgroundColor: AppColors.background,
      ),
      body: ListView(
        children: [
          OtherProfileMainPost(
            id: 0,
            postOwnerName: usersList[2].name,
            postLocation: usersList[2].currentCity,
            postProfileImageUrl: usersList[2].avatar,
            imageUrls: usersList[2].imageUrls,
            postCaption: usersList[2].biography,
          ),
          ProfileTabController(),
        ],
      ),
    );
  }
}