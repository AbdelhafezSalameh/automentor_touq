import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../categories_pages/bikes_page.dart';

class DucatiBikeScreen extends LogoDetailScreen {
  DucatiBikeScreen({Key? key, required int logoIndex})
      : super(key: key, logoIndex: logoIndex);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/bike_logos/ducati.png',width: 150,height: 150,),
            Divider(
              indent: 50,
              endIndent: 50,
              color: Color(0xffE87121),
            ),
            SizedBox(height: 20,),

            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
                  itemCount: ducatiImages.length,
              
                  itemBuilder: (BuildContext context,int itemIndex){
                return Card(
                  elevation: 0,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(ducatiImages[itemIndex],
                      width: 130,
                        height: 130,
                      ),
                      SizedBox(height: 10,),
                      Text(ducatiTexts[itemIndex],
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.amber
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
List<String> ducatiImages = [
  'assets/images/m3290.jpg',
  'assets/images/DUCATI-748.jpg',
  'assets/images/2017-ducati.jpg',
  'assets/images/Ducati Classic .jpg',
  'assets/images/Ducati Desert Sled .jpg'
];

List<String> ducatiTexts = [
  'Ducati 600 2-valve V-Twins\n(1994 - 2005)',
  'Ducati 748 V-Twins\n(1995 - 2001)',
  'Ducati Cafe Racer\n(2017 - 2020)',
  'Ducati Classic\n(2015 - 2019)',
  'Ducati Desert Sled\n(2017 - 2020)'
];


//hjbhjbkjbhbhbj