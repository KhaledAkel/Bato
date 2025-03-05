import 'package:flutter/material.dart';
import './index.dart' show HotelPrice, HotelViewDeal;

class HotelCardBottomRow extends StatelessWidget {
  final String pricePerNight;

  HotelCardBottomRow({required this.pricePerNight});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      HotelViewDeal(),
      HotelPrice(pricePerNight: pricePerNight),
    ]);
  }
}
