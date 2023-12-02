import 'package:auto_mentorx/widgets/categories_widget.dart';
import 'package:auto_mentorx/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool typing = false;

  final List<ProductCard> products = [
    ProductCard(
      imagePath: 'assets/images/BC-racing-coils.png',
      productName: 'BC Racing -Toyota\nCorolla AE86',
      price: 3500,
    ),
    ProductCard(
      imagePath: 'assets/images/Nissan-LMGT4.png',
      productName: 'NISMO LMGT4 OMORI\nWHEEL',
      price: 4299,
    ),
    ProductCard(
      imagePath: 'assets/images/Garrett-turbo.jpg',
      productName: 'Garrett Performance\nGBC-22s',
      price: 999.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search Product',
                        hintStyle:
                            TextStyle(fontSize: 13, fontFamily: 'Poppins'),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Icon(Icons.search_rounded),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                ),
              ),
              const SizedBox(width: 23),
              Stack(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                        child: Icon(Icons.notifications_active_outlined)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 35),
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red,
                    ),
                    child: const Center(
                      child: Text(
                        '+99',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryWidget(
                            categoryName: 'Cars',
                            imagePath: 'assets/images/Car_.png'),
                        CategoryWidget(
                            categoryName: 'Motorcycles',
                            imagePath: 'assets/images/bike.png'),
                        CategoryWidget(
                            categoryName: '  Classic\n Cars  ',
                            imagePath: 'assets/images/classiccar.png'),
                        CategoryWidget(
                            categoryName: 'Parts Accessories',
                            imagePath: 'assets/images/spare-parts.png'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Newly Listed Parts',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('THE SEE MORE PRESSED');
                        },
                        child: Text(
                          'MORE PARTS',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            products.length,
                            (index) => Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: ProductCard(
                                    imagePath: products[index].imagePath,
                                    productName: products[index].productName,
                                    price: products[index].price,
                                  ),
                                ))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Automotive News',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('THE SEE MORE PRESSED');
                        },
                        child: Text(
                          'SEE MORE',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ImageBanner(
                          imagepath: 'assets/images/image-banner-audi.jpg',
                          text: 'Audi sends off iconic TT with\n final edition roadster',
                        ),
                        SizedBox(width: 10,),
                        ImageBanner(
                          imagepath: 'assets/images/image-banner-nsx.jpg',
                          text: '2024 Acura TLX gets feature\n enhancements new grille',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageBanner extends StatelessWidget {
  final String imagepath;
  final String text;
  const ImageBanner({
    super.key, required this.imagepath, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.srcATop,
            ),
            child: Container(
              width: 200,
              height: 100,
              child: Image.asset(
                imagepath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 35,
          left: -5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 11,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
