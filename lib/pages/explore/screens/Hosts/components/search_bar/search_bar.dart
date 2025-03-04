import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 15, right: 15,),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black),
        ),
        child: const TextField(
          enabled: false, // Disables functionality
          decoration: InputDecoration(
            icon: Icon(Icons.search, color: Colors.grey),
            hintText: "Search for somone to travel with",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
