import 'package:auto_mentorx/screens/Bikes%20details/ducati_bike_page/ducati.dart';
import 'package:flutter/material.dart';
import '../Bikes details/bmw_bike_page/bmw.dart';


class BikesPage extends StatelessWidget {
  static String routeName = "/bikes";

  const BikesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bikes'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 80.0,
            mainAxisSpacing: 60.0,
          ),
          itemCount: bikesImages.length,
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
                          return DucatiBikeScreen(logoIndex: index);
                        case 1:
                          return BmwBikeScreen(logoIndex: index);

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

class LogoDetailScreen extends StatelessWidget {
  final int logoIndex;

  const LogoDetailScreen({Key? key, required this.logoIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String logoName = getLogoName(logoIndex);

    return Scaffold(
      appBar: AppBar(
        title: Text('$logoName Bikes'),
      ),
      body: Center(
        child: Text(
            'Details for $logoName bikes'), // Customize the details based on the logo
      ),
    );
  }

  // Function to get the logo name based on the index
  String getLogoName(int index) {
    switch (index) {
      case 2:
        return 'Aprilia';
      case 3:
        return 'Honda';
      case 4:
        return 'KTM';
      case 5:
        return 'Suzuki';
      case 6:
        return 'Kwasaki';
      default:
        return 'Unknown';
    }
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
