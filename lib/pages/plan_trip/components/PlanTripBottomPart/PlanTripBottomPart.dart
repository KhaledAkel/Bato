import 'package:flutter/material.dart';
import '../index.dart' show CityCard;
import '../../../../data/index.dart' show cities;
import '../../../../theme/index.dart' show  AppTextStyles,  AppColors;

class PlanTripBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discovered by your friends", style: TextStyle(fontSize: 16.0,
              fontFamily: AppTextStyles.fontFamilyPrimary),),
            ],
          ),
        ),
        Container(
          color: AppColors.background,
          height: 240.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cities.length,
            itemBuilder: (context, index) {
              return CityCard(city: cities[index]);
            },
          ),
        ),


      ],
    );
  }
}