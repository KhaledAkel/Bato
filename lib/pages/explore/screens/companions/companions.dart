import 'package:flutter/material.dart';
import 'components/index.dart' show CompanionsPost, SearchBarWidget;
import '../../../../data/index.dart' show companions_posts;

class CompanionsPage extends StatelessWidget {
  const CompanionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: companions_posts.length + 1, // +1 for the SearchBarWidget
      itemBuilder: (context, index) {
        if (index == 0) {
          return const SearchBarWidget(); // First item is the SearchBarWidget
        } else {
          final post = companions_posts[index - 1]; // Adjust index for posts
          return CompanionsPost(
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