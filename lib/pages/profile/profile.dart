import 'package:flutter/material.dart';
import './components/index.dart' show ProfileMainPost, ProfileTabController;

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         ProfileMainPost(
          id: 0,
          postOwnerName: 'Alex Francos',
          postLocation: 'San Francisco, CA',
          postProfileImageUrl: 'https://res.cloudinary.com/doiav30hi/image/upload/v1741366670/AlexMan_gkp20z.jpg',
          imageUrls: [
            'https://res.cloudinary.com/doiav30hi/image/upload/v1740920763/samples/man-portrait.jpg',
            'https://res.cloudinary.com/doiav30hi/image/upload/v1741366670/AlexMan_gkp20z.jpg',
          ],
          postCaption: 'This is a caption',
          
        ),
        ProfileTabController(),
      ],
    );
  }
}