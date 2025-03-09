import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../theme/index.dart' show AppColors;

class MessengerPage extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      'name': 'Alice',
      'currentCity': 'New York',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Bob',
      'currentCity': 'Los Angeles',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Charlie',
      'currentCity': 'Chicago',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
    {
      'name': 'David',
      'currentCity': 'Houston',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Eve',
      'currentCity': 'Phoenix',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Frank',
      'currentCity': 'Philadelphia',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Grace',
      'currentCity': 'San Antonio',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Hank',
      'currentCity': 'San Diego',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Ivy',
      'currentCity': 'Dallas',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Jack',
      'currentCity': 'San Jose',
      'profilePhoto': 'https://via.placeholder.com/150'
    },
  ];

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
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(contact['profilePhoto']!),
            ),
            title: Text(contact['name']!),
            subtitle: Text('Currently in: ${contact['currentCity']}'),
            onTap: () {
              context.go('/messenger', extra: contact['name']);
            },
          );
        },
      ),
    );
  }
}