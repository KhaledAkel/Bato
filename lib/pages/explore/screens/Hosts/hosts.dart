import 'package:flutter/material.dart';
import 'components/index.dart' show  HostPost;
import '../../../../data/index.dart' show companions_posts;


class HostsPage extends StatelessWidget {
  const HostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: companions_posts.length,
        itemBuilder: (context, index) {
          final post = companions_posts[index];
          return HostPost(
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