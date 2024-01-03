import 'package:flutter/material.dart';
import '../classic_cars_details/porcshe_car_page/porsche.dart';


class ClassicCarsPage extends StatelessWidget {
  static String routeName = "/classic_cars";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classic Cars'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 80.0,
            mainAxisSpacing: 60.0,
          ),
          itemCount: classicCarsImages.length,
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
                            return PorscheCarScreen(logoIndex: index);
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
                  child: Image.asset(classicCarsImages[index]),
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
        title: Text('$logoName Classic'),
      ),
      body: Center(
        child: Text(
            'Details for $logoName Classic'), // Customize the details based on the logo
      ),
    );
  }

  // Function to get the logo name based on the index
  String getLogoName(int index) {
    switch (index) {
      case 1:
        return 'Porsche';
      case 2:
        return 'Cadillac';
      case 3:
        return 'Ford';
      case 4:
        return 'Pontiac';
      case 5:
        return 'Toyota';
      case 6:
        return 'Chevrolet';
      default:
        return 'Unknown';
    }
  }
}

List<String> classicCarsImages = [
  'assets/images/classic_cars-logos/Porsche-Logo.png',
  'assets/images/classic_cars-logos/Cadillac-Logo.png',
  'assets/images/classic_cars-logos/Ford-Logo-1917.jpg',
  'assets/images/classic_cars-logos/Pontiac-Lоgo.png',
  'assets/images/classic_cars-logos/toyota-logo.png',
  'assets/images/classic_cars-logos/Chevrolet-logo.png',
];
