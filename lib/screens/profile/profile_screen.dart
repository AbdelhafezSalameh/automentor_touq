import 'package:flutter/material.dart';
import 'package:auto_mentorx/size_config.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map dataRoute = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(25),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Body(
        controllerUserName: TextEditingController(text: dataRoute['userName']),
        controllerEmail: TextEditingController(text: dataRoute['email']),
        controllerPassword: TextEditingController(text: dataRoute['password']),
        controllerPhoneNumber:
            TextEditingController(text: dataRoute['phoneNumber']),
        controllerAddress: TextEditingController(text: dataRoute['address']),
        controllerImgUrl: TextEditingController(text: dataRoute['imgUrl']),
      ),
    );
  }
}
