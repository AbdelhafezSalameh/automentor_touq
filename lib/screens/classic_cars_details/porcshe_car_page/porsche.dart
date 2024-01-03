import 'package:flutter/material.dart';

import '../../categories_pages/bikes_page.dart';

class PorscheCarScreen extends LogoDetailScreen {
  PorscheCarScreen({Key? key, required int logoIndex})
      : super(key: key, logoIndex: logoIndex);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/classic_cars-logos/Porsche-Logo.png',width: 150,height: 150,),
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
                itemCount: classicCarsImages.length,

                itemBuilder: (BuildContext context,int itemIndex){
                  return Card(
                    elevation: 0,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(classicCarsImages[itemIndex],
                          width: 130,
                          height: 130,
                        ),
                        SizedBox(height: 10,),
                        Text(classicCarsTexts[itemIndex],
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black
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
List<String> classicCarsImages = [
  'assets/images/classic_cars-logos/Porsche 911 (1965 - 1989).png',
  'assets/images/classic_cars-logos/porsche917_19.png',

];

List<String> classicCarsTexts = [
  'Porsche 911 (1965 - 1989)',
  'Porsche 917 1969',

];

