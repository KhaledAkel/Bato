import 'package:flutter/material.dart';
import '../../../../theme/index.dart' show AppColors, AppTextStyles;
import 'package:go_router/go_router.dart';

class ChatPage extends StatefulWidget {
  final Map<String, dynamic> user;

  const ChatPage({Key? key, required this.user}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Map<String, dynamic>> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage(String message, bool isUser) {
    setState(() {
      _messages.add({'text': message, 'isUser': isUser});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user['name']),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Align(
                  alignment: message['isUser'] ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: message['isUser'] ? Colors.blue : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      message['text'],
                      style: TextStyle(color: message['isUser'] ? Colors.white : Colors.black),
                    ),
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
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      _sendMessage(_controller.text, true);
                      _controller.clear();
                      // Simulate a response from the contact
                      Future.delayed(Duration(seconds: 1), () {
                        _sendMessage('Response from ${widget.user['name']}', false);
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
        context.go('/chat', extra: userMap);
      },
    );
  }
}