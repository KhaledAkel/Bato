import 'package:flutter/material.dart';
import './blocks/index.dart' show PostDetails;

class HomePost extends StatefulWidget {
  final int id;
  final String postOwnerName;
  final String postLocation;
  final String postProfileImageUrl;
  final List<String> imageUrls;
  final String postCaption;
  @override
  // ignore: library_private_types_in_public_api
  _HomePostState createState() => _HomePostState();

  const HomePost({
    Key? key,
    required this.id,
    required this.postOwnerName,
    required this.postLocation,
    required this.postProfileImageUrl,
    required this.imageUrls,
    required this.postCaption,
  }) : super(key: key);


}

class _HomePostState extends State<HomePost> {
  final PageController _controller =
      PageController(initialPage: 1, viewportFraction: 0.90);
@override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0,
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
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  widget.imageUrls[imageIndex],
                  fit: BoxFit.cover,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
