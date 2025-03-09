import 'package:flutter/material.dart';
import '../../../../data/index.dart' show asHostPosts;
import './components/index.dart' show HostPreview;

class HostSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: asHostPosts.length,
        itemBuilder: (BuildContext context, int index) {
          return HostPreview(
            hostId: asHostPosts[index].id,
            HostPreviewImage: asHostPosts[index].imageUrls[0],
          );
      
        },
      ),
    );        
  }
}

