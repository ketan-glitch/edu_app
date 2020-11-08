import 'package:edu_app/widgets/carousel.dart';
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
      backgroundColor: Colors.white,
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
            Text(
              'What do you want \n   to learn today?',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontFamily: 'QuickSand',
              ),
            ),
            SizedBox(height: size.height * 0.07),
            Carousel(),
            SizedBox(height: size.height * 0.07),
            Container(
              margin: EdgeInsets.only(
                left: size.width * 0.1,
                right: size.width * 0.1,
              ),
              height: size.height * 0.055,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                    fontFamily: 'QuickSand',
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.blue[800],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {},
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Live',
          icon: Icon(Icons.live_tv),
        ),
        BottomNavigationBarItem(
          label: 'User',
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
