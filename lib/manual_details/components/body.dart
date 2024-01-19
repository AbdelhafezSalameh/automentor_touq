import 'package:auto_mentorx/components/default_button.dart';
import 'package:auto_mentorx/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Map bmwdata = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic> ;

    return Scaffold(
        backgroundColor: Color(0xFFF5F6F9),
        body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                bmwdata['path'],
                width: 240,
                height: 240,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
            padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
            width: double.infinity,
            height: getProportionateScreenHeight(480),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    bmwdata['text'],
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Text('What\s Covered ?',style:
                        TextStyle(
                            color: Color(0xffc94335),
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        )
                          ,),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text(
                    bmwdata['description'],
                  ),
                  SizedBox(height: 80,),
                  DefaultButton(
                    text: 'Add To Cart',
                    press: (){},
                  )

                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
