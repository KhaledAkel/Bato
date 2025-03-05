import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme/index.dart';
import 'package:go_router/go_router.dart';
import 'components/index.dart' show HotelCard;

class HotelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
        title: Text('Hotels', 
          style: TextStyle(
            color: AppColors.text,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: AppTextStyles.fontFamilyPrimary,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body:  ListView(
                    children: [
                      HotelCard(
                          propertyName: 'Al Hamra Hotel',
                          propertyLocation: 'Al Hamra, Beirut, Lebanon',
                          pricePerNight: '200',
                          rating: '4.5',
                          propertyImageUrl:
                              'https://images.pexels.com/photos/774042/pexels-photo-774042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          reviewCount: '200',
                          onBookNowPressed: () {}),
                      HotelCard(
                          propertyName: 'The Royal Hotel',
                          propertyLocation: 'Madrid, Spain',
                          pricePerNight: '300',
                          rating: '4.5',
                          propertyImageUrl:
                              'https://images.pexels.com/photos/2445545/pexels-photo-2445545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          reviewCount: '200',
                          onBookNowPressed: () {}),
                      HotelCard(
                          propertyName: 'Casablato',
                          propertyLocation: 'Morocco',
                          pricePerNight: '200',
                          rating: '4.5',
                          propertyImageUrl:
                              'https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          reviewCount: '200',
                          onBookNowPressed: () {}),
                      HotelCard(
                          propertyName: 'Casablato',
                          propertyLocation: 'Morocco',
                          pricePerNight: '200',
                          rating: '4.5',
                          propertyImageUrl:
                              'https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          reviewCount: '200',
                          onBookNowPressed: () {}),
                      HotelCard(
                          propertyName: 'Casablato',
                          propertyLocation: 'Morocco',
                          pricePerNight: '200',
                          rating: '4.5',
                          propertyImageUrl:
                              'https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          reviewCount: '200',
                          onBookNowPressed: () {}),
                    ],
                  ),
    );
  }
}