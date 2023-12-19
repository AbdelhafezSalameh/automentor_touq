import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../models/cardnews.dart';
import '../../../size_config.dart';
import 'news_header.dart';
import 'news_slider.dart';
import 'news_widget.dart';

class newsBody extends StatefulWidget {
  const newsBody({super.key});

  @override
  State<newsBody> createState() => _newsBodyState();
}

class _newsBodyState extends State<newsBody> {
  Dio dio = Dio();
  List<NewsCard> newsCard = [];
  bool isDataFetched = false;

  Future<void> getData() async {
    var response = await dio.get(
        'https://newsdata.io/api/1/news?apikey=pub_35002f7dae0e9d658193a41b7d19d67e53356&q=automotive&country=gb&language=en ');

    List fetchData = response.data['results'];
    fetchData.forEach((element) {
      newsCard.add(NewsCard(
          title: element['title'].toString(),
          desc: element['description'].toString(),
          path: element['image_url'].toString()));
    });
    newsCard.forEach((element) {
      print(element.title);
      setState(() {});
    });

    setState(() {
      isDataFetched = true; // Set the flag to true after fetching data
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              NewsHeader(),
              SizedBox(height: getProportionateScreenWidth(20)),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Automotive News',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              NewsSlider(),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Latest News',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(15)),
              isDataFetched
                  ? SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.builder(
                  itemCount: newsCard.length,
                  itemBuilder: (context, index) {
                    return Container(
                        child: NewsWidget(
                            title: newsCard[index].title,
                            desc: newsCard[index].desc,
                            path: newsCard[index].path));
                  },
                ),
              )
                  : NewsCardSkelton(),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsCardSkelton extends StatelessWidget {
  const NewsCardSkelton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 10),

      child: Column(
        children:
          List.generate(5,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Skelton(
                          width: 150,
                          height: 110,
                        ),
                        SizedBox(width: 10,),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Skelton(
                              width: 240,
                            ),
                            SizedBox(height: 5,),
                            Skelton(
                              width: 200,
                            ),
                            SizedBox(height: 15,),
                            Skelton(
                              width: 210,
                            ),
                            SizedBox(height: 5,),
                            Skelton(
                              width: 200,
                            ),
                          ],
                        ),

                        ),
                      ],
                    ),
                  ),)
        ,
      )
    );
  }
}

class Skelton extends StatelessWidget {
  const Skelton({
    super.key, this.height, this.width,
  });
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
