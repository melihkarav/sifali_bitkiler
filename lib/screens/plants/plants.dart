import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/components/my_bottom_nav_bar.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:plant_app/components/searchbar.dart';
import 'package:plant_app/models/product.dart';
import 'package:plant_app/screens/plants/components/item_card.dart';
import '../../constants.dart';
import 'components/detailScreen.dart';

class PlantPage extends StatelessWidget {
  PlantPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: Container(
        child: Column(
          children: <Widget>[
        Expanded(

        child: GridView.builder(
            itemCount:products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],
                    ),
                  )),
            ),
        ),


        )],
        ),
      ),
    );
  }
}
