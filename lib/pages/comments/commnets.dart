import 'package:flutter/material.dart';
import '../../theme/index.dart' show AppColors, AppTextStyles;

class CommentPage extends StatefulWidget {
  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  final List<Map<String, String>> comments = [
    {"profilePic": "https://res.cloudinary.com/doiav30hi/image/upload/v1741643392/w-4_neomeo.jpg", "comment": "Nice trip"},
    {"profilePic": "https://res.cloudinary.com/doiav30hi/image/upload/v1741643392/w-3_ufscvt.jpg", "comment": "Nice picture!"},
    {"profilePic": "https://res.cloudinary.com/doiav30hi/image/upload/v1741643391/person2_r1e8co.jpg", "comment": "I will Join You Next Time"},
  ];

  final TextEditingController _commentController = TextEditingController();

  void _addComment(String comment) {
    setState(() {
      comments.add({
        "profilePic": "https://res.cloudinary.com/doiav30hi/image/upload/v1741366670/AlexMan_gkp20z.jpg", // Placeholder profile picture
        "comment": comment,
      });
    });
    _commentController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Comments', style: 
        TextStyle(
          color: AppColors.text,
          fontFamily: AppTextStyles.fontFamilyPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(comments[index]["profilePic"]!),
                        radius: 20,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: AppColors.background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            comments[index]["comment"]!,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.text,
                              fontFamily: AppTextStyles.fontFamilyPrimary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    decoration: InputDecoration(
                      hintText: 'Add a comment...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: AppColors.primary,
                  child: IconButton(
                    icon: Icon(Icons.send, color: Colors.white),
                    onPressed: () {
                      if (_commentController.text.isNotEmpty) {
                        _addComment(_commentController.text);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}