import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PostProfileImage extends StatelessWidget {
  final String profileImageUrl;

  const PostProfileImage({
    super.key,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap event, e.g., navigate to profile pag
        context.push('/other_profile');
      },
      child: ClipOval(
        child: Image.network(
          profileImageUrl,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
