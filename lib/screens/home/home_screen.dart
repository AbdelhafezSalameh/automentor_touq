import 'package:flutter/material.dart';
import 'package:auto_mentorx/size_config.dart';
import 'components/categories.dart';
import 'components/home_header.dart';
import 'components/popular_product.dart';
import 'components/special_offers.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(10)),
              // DiscountBanner(),
              Categories(),
              const PopularProducts(),

              SizedBox(height: getProportionateScreenWidth(30)),
              const SpecialOffers(),

              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
    );
  }
}
