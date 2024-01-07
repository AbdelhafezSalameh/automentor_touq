import 'package:auto_mentorx/constants.dart';
import 'package:auto_mentorx/screens/favourite_screen/fav_items.dart';
import 'package:auto_mentorx/screens/home/home_screen.dart';
import 'package:auto_mentorx/screens/profile/profile_screen.dart';
import 'package:auto_mentorx/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../enums.dart';
import '../screens/chat_screen/chat_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  static const routName = '/nav_bar';

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentPageIndex = 0;

  final Color inActiveIconColor = Color(0xFFB6B6B6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: getProportionateScreenHeight(55),
        decoration: BoxDecoration(),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color:
                      currentPageIndex == 0 ? kPrimaryColor : inActiveIconColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/Heart Icon.svg",
                  color:
                      currentPageIndex == 1 ? kPrimaryColor : inActiveIconColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/Chat bubble Icon.svg",
                  color:
                      currentPageIndex == 2 ? kPrimaryColor : inActiveIconColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color:
                      currentPageIndex == 3 ? kPrimaryColor : inActiveIconColor,
                ),
                label: ''),
          ],
          currentIndex: currentPageIndex,
          onTap: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
        ),
      ),
      body: [
        HomeScreen(),
        const FavItems(),
        ChatScreen(),
        ProfileScreen()
      ][currentPageIndex],
    );
  }
}
