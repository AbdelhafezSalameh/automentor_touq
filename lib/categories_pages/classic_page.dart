import 'package:flutter/material.dart';

class ClassicCarsPage extends StatelessWidget {
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
            crossAxisCount: 2, // Set the number of columns in the grid
            crossAxisSpacing: 40.0,
            mainAxisSpacing: 40.0,
          ),
          itemCount: classicCarImages.length,
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
                  child: Image.asset(classicCarImages[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
List<String> classicCarImages = [
  'assets/images/classic_cars-logos/Porsche-Logo.png',
  'assets/images/classic_cars-logos/Cadillac-Logo.png',
  'assets/images/classic_cars-logos/Ford-Logo-1917.jpg',
  'assets/images/classic_cars-logos/Pontiac-Lоgo.png',
  'assets/images/classic_cars-logos/toyota-logo.png',
  'assets/images/classic_cars-logos/Chevrolet-logo.png',
];