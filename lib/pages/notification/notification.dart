import 'package:flutter/material.dart';
import '../../theme/index.dart' show AppColors, AppTextStyles;

class NotificationPage extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'type': 'like',
      'user': 'Alice',
      'profilePhoto': 'https://res.cloudinary.com/doiav30hi/image/upload/v1741643391/person2_r1e8co.jpg',
      'description': 'is now in Lisbon',
      'time': '2h'
    },
    {
      'type': 'comment',
      'user': 'Bob',
      'profilePhoto': 'https://res.cloudinary.com/doiav30hi/image/upload/v1741643391/person4_zxknmg.jpg',
      'description': 'shared a new trip',
      'time': '3h'
    },
    {
      'type': 'follow',
      'user': 'Charlie',
      'profilePhoto': 'https://res.cloudinary.com/doiav30hi/image/upload/v1741643391/person3_emwxox.jpg',
      'description': 'Looking for a travel buddy',
      'time': '5h'
    },
    {
      'type': 'like',
      'user': 'David',
      'profilePhoto': 'https://res.cloudinary.com/doiav30hi/image/upload/v1741643391/person1_jklqbh.jpg',
      'description': 'liked your photo',
      'time': '1d'
    },
    {
      'type': 'comment',
      'user': 'Eve',
      'profilePhoto': 'https://res.cloudinary.com/doiav30hi/image/upload/v1741643391/person6_xez6a9.jpg',
      'description': 'commented: Great!',
      'time': '2d'
    },
     {
      'type': 'comment',
      'user': 'Eve',
      'profilePhoto': 'https://res.cloudinary.com/doiav30hi/image/upload/v1740920762/samples/smile.jpg',
      'description': 'Started following you',
      'time': '2d'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: TextStyle(
          color: Colors.black,
          fontFamily: AppTextStyles.fontFamilyPrimary,

        ),),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(notification['profilePhoto']!),
            ),
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: notification['user'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: AppTextStyles.fontFamilyPrimary,
                    ),
                  ),
                  TextSpan(
                    text: ' ${notification['description']}',
                    style: TextStyle(color: Colors.black,
                      fontFamily: AppTextStyles.fontFamilyPrimary,),
                  ),
                ],
              ),
            ),
            subtitle: Text(notification['time']!),
            onTap: () {
              // Handle notification tap
            },
          );
        },
      ),
    );
  }
}