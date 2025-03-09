import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../theme/index.dart' show AppColors;

class TripPreview extends StatelessWidget {
  final int tripId;
  final String tripPreviewImage;

  TripPreview({required this.tripPreviewImage, required this.tripId});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/view-trip', extra: tripId);
      },
      child: SizedBox(
        width: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              tripPreviewImage,
              fit: BoxFit.cover,
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Container(
                    color: Colors.grey[300],
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.text,
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                            : null,
                      ),
                    ),
                  );
                }
              },
              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(Icons.error),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}