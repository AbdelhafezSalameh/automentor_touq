import 'package:auto_mentorx/bot_navbar.dart';
import 'package:auto_mentorx/home_page.dart';
import 'package:auto_mentorx/authentication/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFe87121),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text('LET\'S GET STARTED',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child: Image.asset('assets/images/AutoMentorX-logo.png',height: 250,width: 250,),
            ),
            SizedBox(height: 10,),
            Container(
              child: Image.asset('assets/images/svg.png'),
            ),
            Container(
              width: double.infinity,
              height: height * 0.25,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFe87121),
                        padding:EdgeInsets.symmetric(horizontal: 110,vertical: 15)
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SignUpPage();
                        }));
                      },
                      child: Text('Sign up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return TabsScreen();
                        }));
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'CONTINUE AS A ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
        
                          children: [
                            TextSpan(
                              text: 'GUEST',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xFFe87121),
                              )
                            ),
                          ]
                        ),
                      )
                    )
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


///////////////hhhhhhhhhhhhhhhhhhahahaha
