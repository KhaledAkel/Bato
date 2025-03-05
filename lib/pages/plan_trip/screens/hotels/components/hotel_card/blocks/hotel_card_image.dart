import 'package:flutter/material.dart';

class HotelCardImage extends StatelessWidget {
  final String propertyImageUrl;

  HotelCardImage({super.key, required this.propertyImageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Image.network(
        propertyImageUrl,
        width: double.infinity,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
