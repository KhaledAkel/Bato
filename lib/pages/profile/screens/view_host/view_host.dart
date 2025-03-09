import 'package:flutter/material.dart';
import '../../../../data/index.dart' show trips;
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
            id: trips[hostId].id,
            postOwnerName: trips[hostId].postOwnerName,
            postLocation: trips[hostId].postLocation,
            postProfileImageUrl:  trips[hostId].postOwnerProfileUrl,
            imageUrls: trips[hostId].imageUrls,
            postCaption: trips[hostId].postCaption,
          )
    )
    );
   
  }
}