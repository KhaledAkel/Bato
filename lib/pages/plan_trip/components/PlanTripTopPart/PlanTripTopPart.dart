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
  final TextEditingController departureController = TextEditingController();
  final TextEditingController returnController = TextEditingController();
  String? fromValue;
  String? toValue;
  String? cityValue;

  final List<String> locations = ['Madrid', 'Paris', 'New York', 'Tokyo', 'London'];

  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        controller.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 350.0,
            decoration: BoxDecoration(
              color: AppColors.primary,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'Where would you\nlike to go?',
                  style: TextStyle(
                    fontFamily: AppTextStyles.fontFamilyPrimary,
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          if (isSelected[0]) ...[
                            Row(
                              children: [
                                Expanded(
                                  child: DropdownButtonFormField<String>(
                                    value: fromValue,
                                    hint: Text('From'),
                                    items: locations.map((String location) {
                                      return DropdownMenuItem<String>(
                                        value: location,
                                        child: Text(location),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        fromValue = newValue;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: DropdownButtonFormField<String>(
                                    value: toValue,
                                    hint: Text('To'),
                                    items: locations.map((String location) {
                                      return DropdownMenuItem<String>(
                                        value: location,
                                        child: Text(location),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        toValue = newValue;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(height: 1, color: Colors.grey),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: departureController,
                                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                                    cursorColor: AppColors.primary,
                                    readOnly: true,
                                    onTap: () => _selectDate(context, departureController),
                                    decoration: InputDecoration(
                                      hintText: 'Departure Date',
                                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: TextField(
                                    controller: returnController,
                                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                                    cursorColor: AppColors.primary,
                                    readOnly: true,
                                    onTap: () => _selectDate(context, returnController),
                                    decoration: InputDecoration(
                                      hintText: 'Return Date',
                                      contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ] else ...[
                            DropdownButtonFormField<String>(
                              value: cityValue,
                              hint: Text('City'),
                              items: locations.map((String location) {
                                return DropdownMenuItem<String>(
                                  value: location,
                                  child: Text(location),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  cityValue = newValue;
                                });
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                border: InputBorder.none,
                              ),
                            ),
                            Divider(height: 1, color: Colors.grey),
                            TextField(
                              controller: departureController,
                              style: TextStyle(color: Colors.grey, fontSize: 14.0),
                              cursorColor: AppColors.primary,
                              readOnly: true,
                              onTap: () => _selectDate(context, departureController),
                              decoration: InputDecoration(
                                hintText: 'Date',
                                contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                border: InputBorder.none,
                              ),
                            ),
                          ],
                          Divider(height: 1, color: Colors.grey),
                          IconButton(
                            icon: Icon(Icons.search, color: Colors.black),
                            onPressed: () {
                              if (isSelected[0]) {
                                context.push('/flights');
                              } else if (isSelected[1]) {
                                context.push('/hotels');
                              }
                            },
                          ),
                        ],
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