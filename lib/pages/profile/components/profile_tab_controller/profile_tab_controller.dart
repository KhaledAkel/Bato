import 'package:flutter/material.dart';
import '../../../../theme/index.dart' show AppColors, AppTextStyles;
import '../index.dart' show TripsSection;

class ProfileTabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: DefaultTabController(
        length: 2, // Number of tabs
        child: Column(
          children: [
            // TabBar can be placed here in the body
            TabBar(
              tabs: [
                Text(
                  'Trips',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppTextStyles.fontFamilyPrimary,
                  ),
                ),
          
                Text(
                  'As a Host',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppTextStyles.fontFamilyPrimary,
                  ),
                ),
              ],
              splashFactory: NoSplash.splashFactory,
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  return states.contains(MaterialState.focused)
                      ? null
                      : Colors.transparent;
                },
              ),
              labelPadding: EdgeInsets.all(12),
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppColors.primary,
              labelColor: AppColors.primary,
            ),
            // TabBarView to show content for each tab
            SizedBox(
              height: 500,
              child: TabBarView(
                children: [
                  TripsSection(),
                 
                  TripsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}