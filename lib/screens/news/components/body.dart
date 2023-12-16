import 'package:auto_mentorx/screens/news/components/news_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../home/components/home_header.dart';
import 'news_header.dart';

class newsBody extends StatefulWidget {
  const newsBody({super.key});

  @override
  State<newsBody> createState() => _newsBodyState();
}

class _newsBodyState extends State<newsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              NewsHeader(),
              SizedBox(height: getProportionateScreenWidth(10)),
              NewsSlider()
            ],
          ),
        ),
      ),
    );
  }
}
