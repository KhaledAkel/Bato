import 'package:flutter/material.dart';
import '../../../../../theme/index.dart' show AppColors;

class TripPreview extends StatelessWidget{
  final String trip_preview_image;

  TripPreview({required this.trip_preview_image});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300  ,
      child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      trip_preview_image,
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
    );
  
}
}