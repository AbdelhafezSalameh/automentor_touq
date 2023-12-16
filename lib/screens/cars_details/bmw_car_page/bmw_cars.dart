import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../categories_pages/bikes_page.dart';

class BmwCarScreen extends LogoDetailScreen {
  BmwCarScreen({Key? key, required int logoIndex})
      : super(key: key, logoIndex: logoIndex);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/car_logos/bmw-logo.png',width: 130,height: 130,),
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
  'assets/images/bmw_e30.jpg',
  'assets/images/bmw_e36.png',
  'assets/images/bmw_e46.png'

];

List<String> ducatiTexts = [
  'BMW E30 \n (1981 - 1991)',
  'BMW E36 \n (1995 - 1999)',
  'BMW E46 \n (1997 - 2006)',

];

