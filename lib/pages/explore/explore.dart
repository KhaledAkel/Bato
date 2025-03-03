import 'package:flutter/material.dart';
import './screens/index.dart' show CompanionsPage;
import '../../theme/index.dart' show AppColors, AppTextStyles;

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Column(
        children: [
          // TabBar can be placed here in the body
          TabBar(
            tabs:  [
              Text('Trending', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: AppTextStyles.fontFamilyPrimary,
              ),),
              Text('Companions', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: AppTextStyles.fontFamilyPrimary,
              ),),
              Text('Hosts', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: AppTextStyles.fontFamilyPrimary,
              ),),

            ],
            splashFactory: NoSplash.splashFactory,
            overlayColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
                return states.contains(WidgetState.focused)
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
          Expanded(
            child: TabBarView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: ListView(
                    children: [
                      
                    ],
                  ),
                ),
                CompanionsPage(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: ListView(
                    children: [
                     
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
