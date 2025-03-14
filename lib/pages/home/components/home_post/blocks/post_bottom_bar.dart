import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../theme/app_colors.dart' show AppColors;
import '../../../../../data/index.dart' show contacts;
import './index.dart' show ContactTile;

class PostBottomBar extends StatefulWidget {
  @override
  _PostBottomBarState createState() => _PostBottomBarState();
}

class _PostBottomBarState extends State<PostBottomBar> {
  bool isLiked = false;
  bool isSaved = false;

  void _showShareBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: AppColors.background,
          padding: EdgeInsets.all(10),
          height: 300,
          child: Column(
            children: [
              Text('Share with', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Expanded(
                child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ContactTile(
            id: contact.id,
            name: contact.name,
            avatar: contact.avatar,
            biography: contact.biography,
            currentCity: contact.currentCity,
            imageUrls: contact.imageUrls,
          );
        },
      ),
              ),
            ],
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : null,
                ),
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {
                  context.push('/comments');
                },
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  _showShareBottomSheet(context);
                },
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              isSaved ? Icons.bookmark : Icons.bookmark_border,
              color: isSaved ? AppColors.primary : null,
            ),
            onPressed: () {
              setState(() {
                isSaved = !isSaved;
              });
            },
          ),
        ],
      ),
    );
  }
}
