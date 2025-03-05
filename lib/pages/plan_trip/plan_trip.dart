import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../theme/app_colors.dart' show AppColors;
import './components/index.dart ' show PlanTripTopPart;
import './components/PlanTripBottomPart/PlanTripBottomPart.dart';

class PlanTripPage extends StatefulWidget {
  @override
  _PlanTripPageState createState() => _PlanTripPageState();
}

class _PlanTripPageState extends State<PlanTripPage> {
  final formatCurrency = NumberFormat.simpleCurrency();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            PlanTripTopPart(),
            PlanTripBottomPart(),
          ],
        ),
      ),
    );
  }
}


