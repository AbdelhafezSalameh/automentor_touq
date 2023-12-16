import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../categories_pages/bikes_page.dart';

class AudiCarScreen extends LogoDetailScreen {
  AudiCarScreen({Key? key, required int logoIndex})
      : super(key: key, logoIndex: logoIndex);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/car_logos/audi=logo.png',width: 130,height: 130,),
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
                          width: 136,
                          height: 136,
                        ),
                        // SizedBox(height: 10,),
                        Text(ducatiTexts[itemIndex],
                          style: TextStyle(
                            //fontSize: 12,
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
List<String> ducatiImages = [
  'assets/images/audi_a5.jpg',
  'assets/images/audi_q7.png',
  'assets/images/audi_r8.jpg',
  'assets/images/audi_tt.png'

];

List<String> ducatiTexts = [
  'Audi A5 COUPÉ (2011 - 2017)',
  'Audi Q7 II (2004-2015)',
  'Audi R8 II (2006-2016)',
  'Audi TT RS II ROADSTER (2009 - 2010)'

];

