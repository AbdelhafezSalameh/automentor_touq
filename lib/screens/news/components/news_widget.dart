import 'package:flutter/cupertino.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({

    super.key, required this.title, required this.desc, required this.path,
  });
  final String title,desc,path;



  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 120,

      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: path.contains('null')?Image.asset('assets/images/unkown.jpg'):
                Image.network(path)
                ,
              ),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,maxLines: 2,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(desc.toString().contains('null')?'':desc,maxLines: 2,)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
