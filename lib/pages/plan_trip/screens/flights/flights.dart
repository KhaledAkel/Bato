import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme/index.dart';
import 'package:go_router/go_router.dart';
import 'components/index.dart' show OneWayFlightCard;

class FlightsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        scrolledUnderElevation: 0,
        title: Text('Flights', 
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
                      OneWayFlightCard(
                        origin: 'Madrid',
                        destination: 'Lisbon',
                        departureDate: '17:10',
                        price: '€200',
                        airlineName: 'Rayanair',
                        flightNumber: 'DL123',
                        arrivalDate: '19:10',
                        flightStatus: 'Direct',
                        duration: '2h 0m',
                        airlineLogoUrl:
                            'https://www.vliegveldinfo.nl/wp-content/uploads/Logo-Ryanair-1024x768.jpg',
                      ),
                      OneWayFlightCard(
                        origin: 'Madrid',
                        destination: 'Lisbon',
                        departureDate: '17:10',
                        price: '€200',
                        airlineName: 'Rayanair',
                        flightNumber: 'DL123',
                        arrivalDate: '19:10',
                        flightStatus: 'Direct',
                        duration: '2h 0m',
                        airlineLogoUrl:
                            'https://logodownload.org/wp-content/uploads/2019/10/middle-east-airlines-0.png',
                      ),
                      OneWayFlightCard(
                        origin: 'Madrid',
                        destination: 'Lisbon',
                        departureDate: '17:10',
                        price: '€200',
                        airlineName: 'Rayanair',
                        flightNumber: 'DL123',
                        arrivalDate: '19:10',
                        flightStatus: 'Direct',
                        duration: '2h 0m',
                        airlineLogoUrl:
                            'https://logodownload.org/wp-content/uploads/2019/10/air-europa-logo-0.png',
                      ),
                      OneWayFlightCard(
                        origin: 'Madrid',
                        destination: 'Lisbon',
                        departureDate: '17:10',
                        price: '€200',
                        airlineName: 'Rayanair',
                        flightNumber: 'DL123',
                        arrivalDate: '19:10',
                        flightStatus: 'Direct',
                        duration: '2h 0m',
                        airlineLogoUrl:
                            'https://th.bing.com/th?id=OSK.13XI46tVoIFX00fKdIBEvJi6lXDSynInKXy7GYU64tk&w=46&h=46&c=11&rs=1&qlt=80&o=6&dpr=2&pid=SANGAM',
                      ),
                      OneWayFlightCard(
                        origin: 'Madrid',
                        destination: 'Lisbon',
                        departureDate: '17:10',
                        price: '€200',
                        airlineName: 'Rayanair',
                        flightNumber: 'DL123',
                        arrivalDate: '19:10',
                        flightStatus: 'Direct',
                        duration: '2h 0m',
                        airlineLogoUrl:
                            'https://th.bing.com/th?id=OSK.13XI46tVoIFX00fKdIBEvJi6lXDSynInKXy7GYU64tk&w=46&h=46&c=11&rs=1&qlt=80&o=6&dpr=2&pid=SANGAM',
                      ),
                      OneWayFlightCard(
                        origin: 'Madrid',
                        destination: 'Lisbon',
                        departureDate: '17:10',
                        price: '€200',
                        airlineName: 'Rayanair',
                        flightNumber: 'DL123',
                        arrivalDate: '19:10',
                        flightStatus: 'Direct',
                        duration: '2h 0m',
                        airlineLogoUrl:
                            'https://th.bing.com/th?id=OSK.13XI46tVoIFX00fKdIBEvJi6lXDSynInKXy7GYU64tk&w=46&h=46&c=11&rs=1&qlt=80&o=6&dpr=2&pid=SANGAM',
                      ),
                      OneWayFlightCard(
                        origin: 'Madrid',
                        destination: 'Lisbon',
                        departureDate: '17:10',
                        price: '€200',
                        airlineName: 'Rayanair',
                        flightNumber: 'DL123',
                        arrivalDate: '19:10',
                        flightStatus: 'Direct',
                        duration: '2h 0m',
                        airlineLogoUrl:
                            'https://th.bing.com/th?id=OSK.13XI46tVoIFX00fKdIBEvJi6lXDSynInKXy7GYU64tk&w=46&h=46&c=11&rs=1&qlt=80&o=6&dpr=2&pid=SANGAM',
                      ),
                    ],
                  ),
    );
  }
}