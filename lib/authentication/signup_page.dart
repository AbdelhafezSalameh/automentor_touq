import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textformfield.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late BuildContext _context;

  Future<void> _signUpWithEmailAndPassword(
      String userName,
      String email,
      String phone,
      String password,
      ) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      // Successfully signed up
      print('User ID: ${userCredential.user!.uid}');

      // Store user data in Firestore
      await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
        'userName': userName,
        'email': email,
        'phone': phone,
      });

      // Navigate to the home screen or perform other actions
      Navigator.pushReplacement(
        _context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } catch (e) {
      // Handle sign-up errors
      print('Error: $e');

      // Show a snackbar with the error message
      ScaffoldMessenger.of(_context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          duration: Duration(seconds: 5),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _context = context;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    TextEditingController userNameController = TextEditingController(text: '');
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xFFe87121),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset('assets/images/AutoMentorX-logo.png'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: height * 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SIGN UP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFFe87121),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        labelText: 'UserName',
                        hintText: 'Enter Your UserName',
                        icon: Icons.person_outline_rounded,
                        controller: userNameController,
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        labelText: 'Email',
                        hintText: 'Enter Your Email',
                        icon: Icons.email_outlined,
                        controller: emailController,
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        labelText: 'Phone',
                        hintText: 'Enter Your PhoneNumber',
                        icon: Icons.phone_android_rounded,
                        controller: phoneController,
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        icon: Icons.password_outlined,
                        controller: passwordController,
                      ),
                      SizedBox(height: 20),
                      CustomTextFormField(
                        labelText: 'Confirm Password',
                        hintText: 'Re-type Your Password',
                        controller: confirmPasswordController,
                      ),
                      SizedBox(height: 20),

                      CustomButton(
                        text: 'SIGN UP',
                        onPressed: () {
                          _signUpWithEmailAndPassword(
                            userNameController.text,
                            emailController.text,
                            phoneController.text,
                            passwordController.text,
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        controller: emailController,

                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'Already Have An Account?  ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Colors.grey[400],
                            ),
                            children: [
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFFe87121),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
