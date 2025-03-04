import 'package:flutter/material.dart';
import './index.dart' show PostProfileImage, PostOwnerName, PostLocation, PostAddIcon;

class PostTopBar extends StatelessWidget {
  final String postOwnerName;
  final String postLocation;
  final String postProfileImageUrl;

  const PostTopBar({
    Key? key,
    required this.postOwnerName,
    required this.postLocation,
    required this.postProfileImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              PostProfileImage(profileImageUrl: postProfileImageUrl),
               const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostOwnerName(ownerName: postOwnerName),
              PostLocation(location: postLocation),
            ],
          ),
            ],
            
          ),
          PostAddIcon(),
         
        ],
      ),
    );
  }
}
