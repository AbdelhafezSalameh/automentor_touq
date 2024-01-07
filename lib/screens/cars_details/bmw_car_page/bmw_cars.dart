import 'package:auto_mentorx/manual_details/car_detail_manual_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/car_model.dart';
import '../../categories_pages/bikes_page.dart';

class BmwCarScreen extends LogoDetailScreen {
  BmwCarScreen({Key? key, required int logoIndex})
      : super(key: key, logoIndex: logoIndex);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: CarWidget(cars: bmw,),
    );
  }
}
List<CardModel> bmw = [
  CardModel(type:
  'assets/images/car_logos/bmw-logo.png',
    path: [
      'assets/images/bmw_e30.jpg',
      'assets/images/bmw_e36.png',
      'assets/images/bmw_e46.jpg'
    ], text: [
      'BMW E30 \n (1991 - 1999)',
      'BMW E36 \n (1995 - 1999)',
      'BMW E46 \n (1998 - 2006)',
    ], secondPath: [
      'assets/images/car_logos/audi_a5.png',
      'assets/images/car_logos/audi_q5.png',
      'assets/images/car_logos/audi_r8.jpg',
      'assets/images/car_logos/audi_tt.png'
    ], description :[
      '1st desc for E30 ',
      '2nd desc for E36',
      '3RD DESC FOR E46'
    ],
  )
];
class CarWidget extends StatelessWidget {
  const CarWidget({
    super.key, required this.cars,
  });

  final List<CardModel> cars;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(cars[0].type,width: 130,height: 130,),
          const Divider(
            indent: 50,
            endIndent: 50,
            color: Color(0xffE87121),
          ),
          SizedBox(height: 20,),

          Expanded(
            child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
            ),
              itemCount: cars[0].path.length,

              itemBuilder: (BuildContext context,int itemIndex){
                return GestureDetector(
                  onTap: () => Navigator.pushNamed(context, CarDetailScreen.routeName,arguments: {
                    'path': cars[0].secondPath[itemIndex],
                    'text': cars[0].text[itemIndex],
                    'description': cars[0].description[itemIndex]
                  }),
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(cars[0].path[itemIndex],
                          width: 136,
                          height: 136,
                        ),
                        // SizedBox(height: 10,),
                        Text(cars[0].text[itemIndex],
                          style: const TextStyle(
                            //fontSize: 12,
                              color: Colors.black
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
List<String> bmwImages = [
  'assets/images/bmw_e30.jpg',
  'assets/images/bmw_e36.png',
  'assets/images/bmw_e46.jpg'
];

List<String> bmwTexts = [
  'BMW E30 \n (1991 - 1999)',
  'BMW E36 \n (1995 - 1999)',
  'BMW E46 \n (1998 - 2006)',
];

