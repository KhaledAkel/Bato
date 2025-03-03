import 'package:flutter/material.dart';
import '../../theme/index.dart' show AppColors;
import 'components/index.dart' show HomeAppBar, HomePost;
import '../../data/index.dart' show posts;


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return HomePost(
            id: post.id,
            postOwnerName: post.postOwnerName,
            postLocation: post.postLocation,
            postProfileImageUrl: post.postOwnerProfileUrl,
            imageUrls: post.imageUrls,
            postCaption: post.postCaption,
          );
        },
      );
  }
}