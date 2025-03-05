import 'package:flutter/material.dart';
import '../../../../../../../theme/index.dart' show AppColors;
import './blocks/index.dart' show HotelCardImage, HotelDetails;

class HotelCard extends StatelessWidget {
  final String propertyName;
  final String propertyLocation;
  final String pricePerNight;
  final String rating;
  final String propertyImageUrl;
  final String reviewCount;
  final VoidCallback onBookNowPressed;

  HotelCard({
    required this.propertyName,
    required this.propertyLocation,
    required this.pricePerNight,
    required this.rating,
    required this.propertyImageUrl,
    required this.reviewCount,
    required this.onBookNowPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Check if the app is in dark mode
    return Card(
      color: Theme.of(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: AppColors.text, // Border color in dark mode
            width: 1,
          ) // No border in light mode
          ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Image
        HotelCardImage(propertyImageUrl: propertyImageUrl),
        // Details
        HotelDetails(
            propertyLocation: propertyLocation,
            propertyName: propertyName,
            pricePerNight: pricePerNight,
            rating: rating,
            reviewCount: reviewCount)
      ]),
    );
  }
}
