import 'package:flutter/material.dart';
import '../categories_pages/bikes_page.dart';
import '../categories_pages/cars_page.dart';
import '../categories_pages/classic_page.dart';

class CategoryWidget extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  const CategoryWidget({
    super.key,
    required this.categoryName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if(categoryName =='Cars'){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarsPage()),
              );
            }else if (categoryName == 'Motorcycles') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MotorcyclesPage()),
              );
            } else if (categoryName == '  Classic\n Cars  ') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClassicCarsPage()),
              );
            } else if (categoryName == 'Parts Accessories') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PartsAccessoriesPage()),
              );
            }
          },
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFFA94A)),
                child: Image.asset(imagePath),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 90,
          child: Text(
            categoryName,
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.grey,
                fontWeight: FontWeight.w200),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}





class PartsAccessoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parts Accessories'),
      ),
      body: Center(
        child: Text('This is the Parts Accessories category screen.'),
      ),
    );
  }
}