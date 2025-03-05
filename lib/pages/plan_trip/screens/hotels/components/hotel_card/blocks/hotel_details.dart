import 'package:flutter/material.dart';
import './index.dart'
    show HotelRating, HotelLocation, HotelName, HotelCardBottomRow;

class HotelDetails extends StatelessWidget {
  final String propertyLocation;
  final String propertyName;
  final String pricePerNight;
  final String rating;
  final String reviewCount;

  HotelDetails({
    required this.propertyLocation,
    required this.propertyName,
    required this.pricePerNight,
    required this.rating,
    required this.reviewCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, bottom: 20, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Rating
          HotelRating(rating: rating, reviewCount: reviewCount),
          // Name
          HotelName(propertyName: propertyName),
          // Location
          HotelLocation(propertyLocation: propertyLocation),
          SizedBox(height: 3),
          // Price
          HotelCardBottomRow(pricePerNight: pricePerNight),
        ],
      ),
    );
  }
}
