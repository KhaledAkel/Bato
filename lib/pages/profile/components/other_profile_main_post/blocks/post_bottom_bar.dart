import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../theme/app_colors.dart' show AppColors;
import '../../../../../data/contacts.dart' show contacts;

class PostBottomBar extends StatefulWidget {
  @override
  int id;
  String name;
  String avatar;
  String biography;
  String currentCity;
  List<String> imageUrls;

  PostBottomBar({
    Key? key,
    int? id,
    String? name,
    String? avatar,
    String? biography,
    String? currentCity,
    List<String>? imageUrls,
  })  : id = id ?? contacts[0].id,
        name = name ?? contacts[0].name,
        avatar = avatar ?? contacts[0].avatar,
        biography = biography ?? contacts[0].biography,
        currentCity = currentCity ?? contacts[0].currentCity,
        imageUrls = imageUrls ?? contacts[0].imageUrls,
        super(key: key);
  _PostBottomBarState createState() => _PostBottomBarState();
}

class _PostBottomBarState extends State<PostBottomBar> {
  bool isLiked = false;
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton.icon(
   onPressed: () {
  final userMap = {
    'id': widget.id,
    'name': widget.name,
    'avatar': widget.avatar,
    'biography': widget.biography,
    'currentCity': widget.currentCity,
    'imageUrls': widget.imageUrls,
  };
  print('Navigating to chat with user: $userMap');
  context.push('/chat', extra: userMap);
},
      icon: const Icon(Icons.send, color: AppColors.primary),
      label: const Text("Send Message", style: TextStyle(color: AppColors.primary)),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: AppColors.background,
      ),
    ),


        ],
      ),
    );
  }
}
