import 'package:flutter/material.dart';
import '../../../../data/index.dart' show trips;
import './components/index.dart' show ViewTripPost;
import '../../../../theme/index.dart' show AppColors, AppTextStyles;  




class ViewTripPage extends StatelessWidget {
  final int tripId;

  const ViewTripPage({super.key, required this.tripId});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Trip Details'),
        backgroundColor: AppColors.background,
      ),
      body:  Center(
      child: ViewTripPost(
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