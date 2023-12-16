import 'package:auto_mentorx/screens/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_mentorx/constants.dart';
import 'package:auto_mentorx/screens/sign_in/sign_in_screen.dart';
import 'package:auto_mentorx/size_config.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "Discover",
      "text": "Lorem ipsum dolor sit amet consectetur.\nFeugiat semper magna lacus commodo\n ipsum.",
      "image": "assets/images/car_intro_1.png"
    },
    {
      "title": "Perfection",
      "text":
          "Lorem ipsum dolor sit amet consectetur.\nFeugiat semper magna lacus commodo\n ipsum.",
      "image": "assets/images/into_pic_2.png"
    },
    {
      "title": "Make it Last",
      "text":
      "Lorem ipsum dolor sit amet consectetur.\nFeugiat semper magna lacus commodo\n ipsum.",
      "image": "assets/images/Starman-bro.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  title: splashData[index]['title'],
                  text: splashData[index]['text'],
                  image: splashData[index]["image"],

                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => AnimatedContainer(
                          duration: kAnimationDuration,
                          margin: EdgeInsets.only(right: 5),
                          height: 6,
                          width: currentPage == index ? 20 : 6,
                          decoration: BoxDecoration(
                            color: currentPage == index
                                ? kPrimaryColor
                                : Color(0xFFD8D8D8),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
