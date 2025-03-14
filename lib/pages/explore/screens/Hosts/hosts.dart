import 'package:flutter/material.dart';
import 'components/index.dart' show HostPost, SearchBarWidget;
import '../../../../data/index.dart' show hosts_posts;

class HostsPage extends StatelessWidget {
  const HostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hosts_posts.length + 1, // +1 for the SearchBarWidget
      itemBuilder: (context, index) {
        if (index == 0) {
          return const SearchBarWidget(); // First item is the SearchBarWidget
        } else {
          final post = hosts_posts[index - 1]; // Adjust index for posts
          return HostPost(
            id: post.id,
            postOwnerName: post.postOwnerName,
            postLocation: post.postLocation,
            postProfileImageUrl: post.postOwnerProfileUrl,
            imageUrls: post.imageUrls,
            postCaption: post.postCaption,
          );
        }
      },
    );
  }
}