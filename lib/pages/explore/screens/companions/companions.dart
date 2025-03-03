import 'package:flutter/material.dart';
import 'components/index.dart' show  CompanionsPost;
import '../../../../data/index.dart' show companions_posts;


class CompanionsPage extends StatelessWidget {
  const CompanionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: companions_posts.length,
        itemBuilder: (context, index) {
          final post = companions_posts[index];
          return CompanionsPost(
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