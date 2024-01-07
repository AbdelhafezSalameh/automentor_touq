import 'package:flutter/material.dart';

class PartsPage extends StatelessWidget {
  static String routeName = "/Parts";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parts Accessories'),
      ),
      body: Center(
        child: Text('this is parts acessories screen'),
      ),
    );
  }
}

