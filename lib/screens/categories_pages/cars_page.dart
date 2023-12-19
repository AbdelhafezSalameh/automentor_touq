import 'package:flutter/material.dart';

import '../cars_details/audi_car_page/audi_cars.dart';
import '../cars_details/bmw_car_page/bmw_cars.dart';

class CarsPage extends StatelessWidget {
  static String routeName = "/cars";

  const CarsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Models'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Set the number of columns in the grid
            crossAxisSpacing: 80.0,
            mainAxisSpacing: 60.0,
          ),
          itemCount: carImages.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigate to the screen based on the index
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) {
                        switch (index) {
                          case 0:
                           return AudiCarScreen(logoIndex: index);
                          case 1:
                            return BmwCarScreen(logoIndex: index);

                          default:
                            return LogoDetailScreen(logoIndex: index);
                        }
                      }
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(carImages[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
class LogoDetailScreen extends StatelessWidget {
  final int logoIndex;

  const LogoDetailScreen({Key? key, required this.logoIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String logoName = getLogoName(logoIndex);

    return Scaffold(
      appBar: AppBar(
        title: Text('$logoName Cars'),
      ),
      body: Center(
        child: Text(
            'Details for $logoName Cars'), // Customize the details based on the logo
      ),
    );
  }

  // Function to get the logo name based on the index
  String getLogoName(int index) {
    switch (index) {

      case 2:
        return 'Land Rover';
      case 3:
        return 'Mercedes Benz';
      case 4:
        return 'VolksWagen';
      case 5:
        return 'Kia';
      case 6:
        return 'Huyndai';
      default:
        return 'Unknown';
    }
  }
}

List<String> carImages = [
  'assets/images/car_logos/audi=logo.png',
  'assets/images/car_logos/bmw-logo.png',
  'assets/images/car_logos/Land_Rover_logo.png',
  'assets/images/car_logos/Mercedes-Logo.svg.png',
  'assets/images/car_logos/folkslogo.png',
  'assets/images/car_logos/kia.jpg',
  'assets/images/car_logos/huyndai-logo.png'

];
