import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../data/trending.dart' show trendingCatrds1;
import '../../../home/components/index.dart' show HomePost;
import '../../../../theme/app_colors.dart' show AppColors;

class ExploreListPage extends StatelessWidget {
  final int id;
  final String postOwnerName;
  final String postLocation;
  final String postProfileImageUrl;
  final String postCaption;

  const ExploreListPage({
    Key? key,
    this.id = 1,
    this.postOwnerName = 'John Doe',
    this.postLocation = 'New York, USA',
    this.postProfileImageUrl = 'https://res.cloudinary.com/doiav30hi/image/upload/v1741366670/AlexMan_gkp20z.jpg',
    this.postCaption = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        backgroundColor: AppColors.background,
      ),
      body: ListView.builder(
        itemCount: trendingCatrds1.length,
        itemBuilder: (context, index) {
          return HomePost(id: id, 
          postOwnerName: postOwnerName, 
          postLocation: postLocation, 
          postProfileImageUrl: postProfileImageUrl, 
          imageUrls: [
            trendingCatrds1[index],
          ],
          postCaption: postCaption);
        },
      ),
    );
  }

}