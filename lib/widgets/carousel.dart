import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key key,
  }) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _current = 0;
  List imgList = [
    'assets/images/mathbg.png',
    'assets/images/englishbg.jpg',
    'assets/images/sciencebg.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            height: 256,
            initialPage: 0,
            // enlargeCenterPage: true,
            reverse: false,
            // autoPlay: true,
            enableInfiniteScroll: false,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      Card(
                        color: Colors.green,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.white70,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          // margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // child: Image.asset(
                          //   imgUrl,
                          //   fit: BoxFit.fill,
                          // ),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(imgUrl),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        bottom: 0,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.white70,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            height: 50,
                            width: 121,
                            child: Center(
                              child: Text(
                                'Maths',
                                style: TextStyle(
                                  fontSize: 40
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index ? Colors.blue : Colors.redAccent,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
