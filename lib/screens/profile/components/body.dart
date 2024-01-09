import 'package:auto_mentorx/screens/edit_profile/edit_profile.dart';
import 'package:auto_mentorx/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  final TextEditingController controllerUserName;
  final TextEditingController controllerEmail;
  final TextEditingController controllerPassword;
  final TextEditingController controllerPhoneNumber;
  final TextEditingController controllerAddress;
  final TextEditingController controllerImgUrl;

  const Body(
      {super.key,
      required this.controllerUserName,
      required this.controllerEmail,
      required this.controllerPassword,
      required this.controllerPhoneNumber,
      required this.controllerAddress,
      required this.controllerImgUrl});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Edit Profile",
            icon: "assets/icons/User Icon.svg",
            press: () => {Navigator.pushNamed(context, EditProfile.routeName)},
          ),
          ProfileMenu(
            text: "My Orders",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "My Address",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
