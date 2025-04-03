import 'package:flutter/material.dart';
import '../../../../data/index.dart' show trips_others;
import './components/index.dart' show TripPreview;

class TripsSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trips_others.length,
        itemBuilder: (BuildContext context, int index) {
          return TripPreview(
            tripId: trips_others[index].id,
            tripPreviewImage: trips_others[index].imageUrls[0],
          );
      
        },
      ),
    );        
  }
}

