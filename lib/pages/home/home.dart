import 'package:flutter/material.dart';
import '../../theme/index.dart' show AppColors;
import 'components/index.dart' show HomeAppBar, HomePost;
import '../../data/index.dart' show posts;
import '../../components/index.dart' show BottomBar;

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: HomeAppBar(),
      body: ListView.builder( itemCount: posts.length,
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
      ),

    bottomNavigationBar: BottomBar(),
    );
  }
}