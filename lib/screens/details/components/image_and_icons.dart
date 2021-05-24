import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2),

        child: SizedBox(
          height: size.height * 0.30,
          child: Column(
            children: <Widget>[
              /*Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Spacer(),
                      IconCard(icon: "assets/icons/sun.svg"),
                      IconCard(icon: "assets/icons/icon_2.svg"),
                      IconCard(icon: "assets/icons/icon_3.svg"),
                      IconCard(icon: "assets/icons/icon_4.svg"),
                    ],
                  ),
                ),
              ),*/

                 Container(
                  height: size.height * 0.3,
                  width: size.width * 0.7,
                //alignment: Alignment.center ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29),
                      ),
                    ],
                    image: DecorationImage(

                    alignment: Alignment.bottomCenter,
                      //fit: BoxFit.cover,
                      image: AssetImage("assets/images/aleovera.png"),
                    ),
                  ),
                ),

            ],
          ),
        ),

    );
  }
}
