import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MotorcyclesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Motorcycles'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Set the number of columns in the grid
            crossAxisSpacing: 40.0,
            mainAxisSpacing: 40.0,
          ),
          itemCount: bikesImages.length,
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
                  child: Image.asset(bikesImages[index]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
List<String> bikesImages = [
  'assets/images/bike_logos/ducati.png',
  'assets/images/car_logos/bmw-logo.png',
  'assets/images/bike_logos/aprilia.png',
  'assets/images/bike_logos/honda.png',
  'assets/images/bike_logos/KTM_Bike_Industries.svg.png',
  'assets/images/bike_logos/download (1).png',
  'assets/images/bike_logos/th_black_river_mark.jpg',
];