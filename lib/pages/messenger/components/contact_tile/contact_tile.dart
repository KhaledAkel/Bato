import 'package:flutter/material.dart';
import '../../../../theme/index.dart' show AppColors, AppTextStyles;
import 'package:go_router/go_router.dart';

class ContactTile extends StatelessWidget {
  final int id;
  final String name;
  final String avatar;
  final String biography;
  final String currentCity;
  final List<String> imageUrls;

  const ContactTile({
    Key? key,
    required this.id,
    required this.name,
    required this.avatar,
    required this.biography,
    required this.currentCity,
    required this.imageUrls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 40,
        backgroundImage: NetworkImage(avatar),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: AppColors.text,
          fontSize: 15,
          fontFamily: AppTextStyles.fontFamilyPrimary,
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        'Currently in $currentCity',
        style: TextStyle(
          color: AppColors.text,
          fontSize: 12,
          fontFamily: AppTextStyles.fontFamilyPrimary,
        ),
      ),
      onTap: () {
        final userMap = {
          'id': id,
          'name': name,
          'avatar': avatar,
          'biography': biography,
          'currentCity': currentCity,
          'imageUrls': imageUrls,
        };
        context.push('/chat', extra: userMap);
      },
    );
  }
}