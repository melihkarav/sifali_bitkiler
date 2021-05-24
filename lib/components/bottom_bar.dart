import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:plant_app/screens/blog/blog.dart';
import 'package:plant_app/screens/details/components/body2.dart';
import 'package:plant_app/screens/details/details_screen.dart';
import 'package:plant_app/screens/home/components/body.dart';
import 'package:plant_app/screens/plants/plants.dart';

import '../constants.dart';

class bottomBar extends StatefulWidget {

  @override
  _bottomBarState createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = new MotionTabController(initialIndex:0,vsync: this);

  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();

  }
  MotionTabController _tabController;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       bottomNavigationBar: MotionTabBar(
        labels: [
          "Anasayfa","Bitkiler","Blog","Favoriler"
        ],
        initialSelectedTab: "Anasayfa",
        tabIconColor:deactivatedText,
        tabSelectedColor: kPrimaryColor,
        onTabItemSelected: (int value){
          print(value);
          setState(() {
            _tabController.index = value;
          });
        },
        icons: [
          Icons.home,
          Icons.local_florist,
          Icons.menu,
          Icons.favorite
        ],
        textStyle: TextStyle(color: nearlyBlack, fontWeight: FontWeight.w600),

    ),
         body: MotionTabBarView(
           controller: _tabController,
           children: <Widget>[
             Container(
               child: Center(
                 child:Body(),
               ),
             ),
             Container(
               child: Center(
                 child: PlantPage(),
               ),
             ),
             Container(
               child: Center(
                 child: blogPage(),
               ),
             ),
             Container(
               child: Center(
                 child: CourseInfoScreen(),
               ),
             ),
           ],
         )
     );

  }
}
























































