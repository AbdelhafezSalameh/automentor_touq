import 'package:flutter/material.dart';
import 'package:auto_mentorx/components/coustom_bottom_nav_bar.dart';
import 'package:auto_mentorx/enums.dart';
import 'package:auto_mentorx/size_config.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(25),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Body(),
    );
  }
}
