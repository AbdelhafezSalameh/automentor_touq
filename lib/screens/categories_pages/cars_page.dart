import 'package:auto_mentorx/size_config.dart';
import 'package:flutter/material.dart';

import '../cars_details/audi_car_page/audi_cars.dart';
import '../cars_details/bmw_car_page/bmw_cars.dart';

class CarsPage extends StatelessWidget {
  static String routeName = "/cars";

  const CarsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          height: getProportionateScreenHeight(300),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffe87121), Color(0xffee975c)],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(175, 80),
            ),
          ),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                },
                    icon: Icon(Icons.arrow_back_outlined,color: Colors.white,size: 30,)),
                 Text('Car Models',style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(width: 65,)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Center(
            child: Container(
              height: getProportionateScreenHeight(690),
              width: getProportionateScreenWidth(350),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFFF5F6F9)),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 50.0,
                      mainAxisSpacing: 40.0),
                  itemCount: carImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
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
                            },
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Image.asset(carImages[index]),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        )
      ],
    ));
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
