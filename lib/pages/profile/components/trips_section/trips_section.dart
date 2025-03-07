import 'package:flutter/material.dart';
import '../../../../data/index.dart' show trips;
import './components/index.dart' show TripPreview;

class TripsSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trips.length,
        itemBuilder: (BuildContext context, int index) {
          return TripPreview(
            trip_preview_image: trips[index].imageUrls[0],
          );
      
        },
      ),
    );        
  }
}

