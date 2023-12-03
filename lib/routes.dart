import 'package:flutter/widgets.dart';
import 'package:auto_mentorx/screens/cart/cart_screen.dart';
import 'package:auto_mentorx/screens/categories_pages/bikes_page.dart';
import 'package:auto_mentorx/screens/categories_pages/cars_page.dart';
import 'package:auto_mentorx/screens/categories_pages/classic_page.dart';
import 'package:auto_mentorx/screens/complete_profile/complete_profile_screen.dart';
import 'package:auto_mentorx/screens/details/details_screen.dart';
import 'package:auto_mentorx/screens/forgot_password/forgot_password_screen.dart';
import 'package:auto_mentorx/screens/home/home_screen.dart';
import 'package:auto_mentorx/screens/login_success/login_success_screen.dart';
import 'package:auto_mentorx/screens/otp/otp_screen.dart';
import 'package:auto_mentorx/screens/profile/profile_screen.dart';
import 'package:auto_mentorx/screens/sign_in/sign_in_screen.dart';
import 'package:auto_mentorx/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MotorcyclesPage.routeName: (context) => MotorcyclesPage(),
  CarsPage.routeName: (context) => CarsPage(),
  ClassicCarsPage.routeName: (context) => ClassicCarsPage(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
