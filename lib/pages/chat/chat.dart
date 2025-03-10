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
  final List<Map<String, dynamic>> _messages = [
    {'text': 'Hi there!', 'isUser': false},
    {'text': 'Hello! How are you?', 'isUser': true},
    {'text': 'I am good, thanks! How about you?', 'isUser': false},
    {'text': 'I am doing well, thank you!', 'isUser': true},
  ];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage(String message, bool isUser) {
    setState(() {
      _messages.add({'text': message, 'isUser': isUser});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
        title: Text(widget.user['name'], style: TextStyle(color: AppColors.text, fontWeight: FontWeight.bold, fontFamily: AppTextStyles.fontFamilyPrimary)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
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
                    cursorColor: AppColors.text,
                    controller: _controller,
                    decoration: InputDecoration(
                      focusColor: AppColors.text,
                      hoverColor: AppColors.text  ,
                      fillColor: AppColors.text,
                      hintText: 'Type a message',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: AppColors.text),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.text),
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