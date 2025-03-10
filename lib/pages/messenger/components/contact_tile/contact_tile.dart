import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget{
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
              radius: 40,
              backgroundImage: NetworkImage(avatar),
            ),
            title: Text(name),
            subtitle: Text('Currently in ${currentCity}'),
      
          );
  }
}