import 'package:flutter/material.dart';
import '../../../../../theme/index.dart' show AppTextStyles;

class PostCaption extends StatelessWidget {
  final TextEditingController captionController;

  const PostCaption({
    super.key,
    required this.captionController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 300, // Set the desired height
        child: TextField(
          controller: captionController,
          maxLines: null, // Allow multiple lines
          expands: true, // Expand to fill the container
          cursorColor: Colors.black, // Set cursor color to black
          decoration: InputDecoration(
            hintText: 'Tell us about your trip ...',
            border: InputBorder.none, // Remove the border
            focusedBorder: InputBorder.none, // Remove the focused border
            enabledBorder: InputBorder.none, // Remove the enabled border
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            fillColor: Colors.transparent, // No background color when focused
            filled: true,
          ),
          style: TextStyle(
            fontSize: 14,
            fontFamily: AppTextStyles.fontFamilyPrimary,
          ),
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
          scrollPadding: EdgeInsets.all(20.0),
          scrollPhysics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
