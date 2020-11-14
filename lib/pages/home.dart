import 'package:edu_app/widgets/carousel.dart';
import 'package:edu_app/widgets/navBar.dart';
import 'package:edu_app/widgets/searchBar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.09),
            Text(
              'Hey Ketan !',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'QuickSand',
              ),
            ),
            SizedBox(height: size.height * 0.01),
            WelcomeText(),
            SizedBox(height: size.height * 0.07),
            Carousel(),
            SizedBox(height: size.height * 0.07),
            Search(size: size),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'What do you want \n   to learn today?',
      style: TextStyle(
        fontSize: 30,
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontFamily: 'QuickSand',
      ),
    );
  }
}