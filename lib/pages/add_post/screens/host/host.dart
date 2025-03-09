import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../theme/index.dart';
import '../../../../data/posts.dart' show posts;
import '../../components/index.dart' show AddPost;


class AddHostPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
        title: Text('Share Your Host', 
          style: TextStyle(
            color: AppColors.text,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: AppTextStyles.fontFamilyPrimary,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: SingleChildScrollView(child: Center(child: Column(
      children: [
        AddPost(
          id: posts[0].id,
          postOwnerName: posts[0].postOwnerName,
          postLocation: posts[0].postLocation,
          postProfileImageUrl: posts[0].postOwnerProfileUrl,
          postCaption: posts[0].postCaption,
          
        
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_rounded),
          iconSize: 50,
          onPressed: () {
            context.go('/done');
        
          },
        ),
      ],
    ))),
    );
  }
}

