import 'package:flutter/material.dart';
import 'blocks/index.dart' show PostDetails, PostImagePicker;
import '../../../../theme/app_colors.dart' show AppColors;

class AddPost extends StatefulWidget {
  final int id;
  final String postOwnerName;
  final String postLocation;
  final String postProfileImageUrl;
  final String postCaption;

  @override
  // ignore: library_private_types_in_public_api
  _AddPostState createState() => _AddPostState();

  const AddPost({
    Key? key,
    required this.id,
    required this.postOwnerName,
    required this.postLocation,
    required this.postProfileImageUrl,
    required this.postCaption,
  }) : super(key: key);
}

class _AddPostState extends State<AddPost> {
  final PageController _controller =
      PageController(initialPage: 1, viewportFraction: 0.93);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 580.0, // Increase the height to make the post longer
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: 2, // One for PostDetails and one for PostImagePicker
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
                    return PostImagePicker();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}