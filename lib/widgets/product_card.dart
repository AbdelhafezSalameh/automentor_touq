import 'package:flutter/cupertino.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final double price;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){
              print('Mew');
            },
            child: Container(
              height: 140,
              width: 140,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(imagePath,fit: BoxFit.cover,),
            ),
          ),
          SizedBox(height: 5,),
          Text(productName,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
            ),
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('\$$price',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFe87121)
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
class ProductData {
  final String imagePath;
  final String productName;
  final double price;

  ProductData({
    required this.imagePath,
    required this.productName,
    required this.price,
  });
}