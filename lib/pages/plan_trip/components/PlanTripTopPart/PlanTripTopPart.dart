import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../CustomShapeClipper/CustomShapeClipper.dart';
import '../../../../theme/index.dart';

class PlanTripTopPart extends StatefulWidget {
  @override
  _PlanTripTopPartState createState() => _PlanTripTopPartState();
}

class _PlanTripTopPartState extends State<PlanTripTopPart> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400.0,
            decoration: BoxDecoration(
              color: AppColors.primary,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.0),
                Text(
                  'Where would you\nlike to go?',
                  style: TextStyle(
                    fontFamily: AppTextStyles.fontFamilyPrimary,
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: TextField(
                      controller: TextEditingController(text: 'madrid'),
                      style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      cursorColor: AppColors.primary,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search, color: Colors.black),
                          onPressed: () {
                            if (isSelected[0]) {
                              context.push('/flights');
                            } else if (isSelected[1]) {
                              context.push('/hotels');
                            }
                          },
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  height: 40.0,
                  child: ToggleButtons(
                    splashColor: Colors.transparent,
                    borderColor: Colors.white,
                    fillColor: AppColors.background,
                    borderWidth: 2,
                    selectedBorderColor: Colors.white,
                    selectedColor: AppColors.primary,
                    borderRadius: BorderRadius.circular(30),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.flight_takeoff_outlined,
                              color: isSelected[0] ? AppColors.primary : Colors.white,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.holiday_village_outlined,
                              color: isSelected[1] ? AppColors.primary : Colors.white,
                              size: 24.0,
                            ),
                           
                          ],
                        ),
                      ),
                    ],
                    onPressed: (int index) {
                      setState(() {
                        for (int i = 0; i < isSelected.length; i++) {
                          isSelected[i] = i == index;
                        }
                      });
                    },
                    isSelected: isSelected,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}