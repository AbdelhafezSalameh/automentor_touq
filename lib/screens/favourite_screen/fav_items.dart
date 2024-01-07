import 'package:flutter/material.dart';

class FavItems extends StatefulWidget {
  static String routeName = "/fav_items";

  const FavItems({super.key});

  @override
  State<FavItems> createState() => _FavItemsState();
}

class _FavItemsState extends State<FavItems> {

  @override
  void initState() {
    isFav
    super.initState();
  }


  List<int>counter=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fav Items'),
      ),
      body: Column(
        children: List.generate(
            isFav.le,
                (index) {

                }
        ),
      ),
    );
  }
}
