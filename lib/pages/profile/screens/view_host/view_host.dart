import 'package:flutter/material.dart';
import '../../../../data/index.dart' show trips;
import './components/index.dart' show ViewHostPost;
import '../../../../theme/index.dart' show AppColors, AppTextStyles;  




class ViewHostPage extends StatelessWidget {
  final int tripId;

  const ViewHostPage({super.key, required this.tripId});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Trip Details'),
        backgroundColor: AppColors.background,
      ),
      body:  Center(
      child: ViewHostPost(
            id: trips[tripId].id,
            postOwnerName: trips[tripId].postOwnerName,
            postLocation: trips[tripId].postLocation,
            postProfileImageUrl:  trips[tripId].postOwnerProfileUrl,
            imageUrls: trips[tripId].imageUrls,
            postCaption: trips[tripId].postCaption,
          )
    )
    );
   
  }
}