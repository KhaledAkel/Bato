import 'package:flutter/material.dart';
import '../../../../data/index.dart' show asHostPosts;
import './components/index.dart' show ViewHostPost;
import '../../../../theme/index.dart' show AppColors, AppTextStyles;  




class ViewHostPage extends StatelessWidget {
  final int hostId;

  const ViewHostPage({super.key, required this.hostId});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Host Post Details'),
        backgroundColor: AppColors.background,
      ),
      body:  Center(
      child: ViewHostPost(
            id: asHostPosts[hostId].id,
            postOwnerName: asHostPosts[hostId].postOwnerName,
            postLocation: asHostPosts[hostId].postLocation,
            postProfileImageUrl:  asHostPosts[hostId].postOwnerProfileUrl,
            imageUrls: asHostPosts[hostId].imageUrls,
            postCaption: asHostPosts[hostId].postCaption,
          )
    )
    );
   
  }
}