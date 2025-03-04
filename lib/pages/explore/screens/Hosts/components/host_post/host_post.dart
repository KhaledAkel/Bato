import 'package:flutter/material.dart';
import './blocks/index.dart' show PostDetails;
import '../../../../../../theme/app_colors.dart' show AppColors;

class HostPost extends StatefulWidget {
  final int id;
  final String postOwnerName;
  final String postLocation;
  final String postProfileImageUrl;
  final List<String> imageUrls;
  final String postCaption;

  @override
  // ignore: library_private_types_in_public_api
  _HostPostState createState() => _HostPostState();

  const HostPost({
    Key? key,
    required this.id,
    required this.postOwnerName,
    required this.postLocation,
    required this.postProfileImageUrl,
    required this.imageUrls,
    required this.postCaption,
  }) : super(key: key);
}

class _HostPostState extends State<HostPost> {
  final PageController _controller =
      PageController(initialPage: 1, viewportFraction: 0.90);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 580.0, // Increase the height to make the post longer
        child: PageView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          itemCount: widget.imageUrls.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return PostDetails(
                id: widget.id,
                postOwnerName: widget.postOwnerName,
                postLocation: widget.postLocation,
                postProfileImageUrl: widget.postProfileImageUrl,
                postCaption: widget.postCaption,
              );
            } else {
              final imageIndex = index - 1;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    widget.imageUrls[imageIndex],
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
          },
        ),
      ),
    );
  }
}
