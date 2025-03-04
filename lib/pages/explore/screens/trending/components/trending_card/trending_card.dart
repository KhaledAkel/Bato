import 'package:flutter/material.dart';
import '../../../../../../theme/app_colors.dart' show AppColors;

class TrendingCard extends StatefulWidget {
  final int id;
  final String imageUrl;

  const TrendingCard({
    Key? key,
    required this.id,
    required this.imageUrl,
  }) : super(key: key);

  @override
  _TrendingCardState createState() => _TrendingCardState();
}

class _TrendingCardState extends State<TrendingCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350, // Set a fixed height for the card
      width: double.infinity, // Makes the width take up the available space
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5), // Optional padding around the image
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          widget.imageUrl,
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
    );
  }
}
