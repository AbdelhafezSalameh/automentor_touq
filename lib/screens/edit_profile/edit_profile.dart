import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});
  static String routeName = "/edit_profile";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile'
        ),
      ),
      body: Column(
        children: [
          TextFormField(
        ),
          TextFormField(
            onTap: (){},
          ),
          TextFormField(
            onTap: (){},
          ),
          TextFormField(
            onTap: (){},
          ),
        ]
      ),

    );
  }
}
