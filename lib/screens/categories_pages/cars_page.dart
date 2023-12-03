import 'package:flutter/material.dart';

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
            crossAxisSpacing: 40.0,
            mainAxisSpacing: 40.0,
          ),
          itemCount: carImages.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                print('Pressed');
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

List<String> carImages = [
  'assets/images/car_logos/audi=logo.png',
  'assets/images/car_logos/bmw-logo.png',
  'assets/images/car_logos/folkslogo.png',
  'assets/images/car_logos/Ford_logo.png',
  'assets/images/car_logos/Land_Rover_logo.png',
  'assets/images/car_logos/Mercedes-Logo.svg.png',
  'assets/images/car_logos/Renault-logo.png',
];
