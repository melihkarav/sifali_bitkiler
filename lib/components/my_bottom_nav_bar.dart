import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/blog/blog.dart';
import 'package:plant_app/screens/home/home_screen.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 85,
            color: kPrimaryColor.withOpacity(0.30),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home_outlined),
            iconSize: kDefaultPadding * 1.6,
            color: kPrimaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            iconSize: kDefaultPadding * 1.6,
            color: Colors.red,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.assignment_outlined),
            iconSize: kDefaultPadding * 1.6,
            color: kPrimaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => blogPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
