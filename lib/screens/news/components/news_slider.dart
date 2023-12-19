import 'package:auto_mentorx/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsSlider extends StatefulWidget {
  NewsSlider({
    super.key,
  });

  @override
  State<NewsSlider> createState() => _NewsSliderState();
}

class _NewsSliderState extends State<NewsSlider> {
  final List<Map<String, dynamic>> carouselItems = [
    {'image': 'assets/images/adds.jpg', 'text': 'Your ADD'},
    {
      'image': 'assets/images/ads_banner.png',
      'text': 'You Can Now Add Your Add Here'
    },
    {
      'image': 'assets/images/ads_banner2.png',
      'text': 'You Can Now Add Your Add Here'
    },
  ];

  int _currentPic = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: carouselItems.map((item) {
          return Container(
            width: getProportionateScreenWidth(812),
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    item['image'],
                    height: 240,
                    width: 320,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 165,
                    left: 20,
                    child: Text(
                      item['text'],
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Positioned.fill(
                      child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent
                      ],
                    )),
                  ))
                ],
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 210,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          //duration for each slider
          autoPlayCurve: Curves.fastOutSlowIn,
          //animation for text
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          viewportFraction: 0.8,
          enableInfiniteScroll: true,
        ),
      ),
    );
  }
}
