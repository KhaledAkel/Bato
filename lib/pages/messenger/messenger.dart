import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../theme/index.dart' show AppColors;
import '../../data/index.dart' show contacts;
import './components/index.dart' show ContactTile;

class MessengerPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
        title: Text('Messenger', style: TextStyle(color: AppColors.text, fontWeight: FontWeight.bold)),
        leading: IconButton(onPressed: () {context.pop();}, icon: Icon(Icons.arrow_back)),
      ),
      body: ListView.builder(
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
    );
  }
}