import 'package:flutter/material.dart';
import '../../../constants.dart';


class CourseInfoScreen extends StatefulWidget {
  @override
  _CourseInfoScreenState createState() => _CourseInfoScreenState();
}

class _CourseInfoScreenState extends State<CourseInfoScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController animationController;
  Animation<double> animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return Container(
      color: nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[


                AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.asset('assets/images/aleovera.png',scale: 3 ,),
                ),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0,
              bottom: 0,
              left: 10,
              right:10,
              child: Container(
                decoration: BoxDecoration(
                  color: nearlyWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
                      constraints: BoxConstraints(
                          minHeight: infoHeight,
                          maxHeight: tempHeight > infoHeight
                              ? tempHeight
                              : infoHeight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 32.0, left: 18, right: 16),
                            child: Text(
                              'Aloe Vera',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                letterSpacing: 0.27,
                                color: darkerText,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, bottom: 8, top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Africa',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 22,
                                    letterSpacing: 0.27,
                                    color: kPrimaryColor,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: opacity1,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: <Widget>[
                                  getTimeBoxUI('24', 'Classe'),
                                  getTimeBoxUI('2hours', 'Time'),
                                  getTimeBoxUI('24', 'Seat'),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity: opacity2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8),
                                child: Text(

                                  "    Aloe vera, yap??lan ara??t??rmalar sonucu bir??ok faydas?? oldu??u ka??tlanan,"
                                      " zambakgiller familyas??ndan olan kakt??se benzer bir bitkidir. Aloe Vera"
                                      " bitkisinin pop??lerli??i ??ok eski zamanlardan g??n??m??ze kadar hala devam "
                                      "etmektedir. Kozmetik ??r??nleri de dahil olmak ??zere bir??ok ila?? tedavisinde"
                                      " kullan??lan aloe vera bitkisi ??lkemizin g??ney b??lgelerinde, s??cak alanlarda "
                                      "daha ??ok yeti??mektedir. Yapraklar?? i??erisinde saydam j??leye benzer bir ??zsu "
                                      "bulunduran aloe vera bitkisi faydalar?? ile adeta ??ifa da????t??yor."
                                      "ALOE VERA YET????T??R??L??RKEN D??KKAT ED??LMES?? GEREKEN P??F NOKTALARK??????n 10 g??nde 1 "
                                      "defa yaz??n ise hafta 1-2 defa ortam s??cakl??????na ba??l?? sulanmas?? kafidir. Sulama "
                                      "yap??ld??????nda saks?? i??erisindeki topra????n her yerine ayn?? orant??da su verilmesine"
                                      " ??zen g??steriniz. Aloe Vera ??i??e??inin topra???? ??amurumsu k??vamda olmamal??d??r.Bitkinize"
                                      " kesinlikle ??e??me suyu kullanmay??n. A????r?? klor bitkinin k??k g??zeneklerini kapatarak"
                                      " yapraklar??n??n sa??l??ks??z g??r??nmesine neden olur.Bitki yaz aylar??nda kesinlikle direk"
                                      " g??ne?? alt??nda b??rak??lmamal??d??r. Direk g??ne?? yapraklar??n??n bozulmas??na neden olmaktad??r."
                                      "Aloe vera ??i??e??inin sa??l??kl?? geli??ebilmesi ve bol yaprak a??mas?? i??in kesinlikle kaliteli"
                                      " bitki topra???? kullan??lmal??d??r. Topra????n??n vitaminsiz ve kalitesiz olmas?? aloe vera ??i??e??inin"
                                      " geli??imine engel olabilir.Aloe vera ??i??e??i saks??s?? nisan may??s ay??nda senede 1 defa de??i??tirmeniz"
                                      " uygundur.Direk g??ne?? ?????????? almayan yerlerde bak??lmal??d??r. Aksi taktir de aloe vera ??i??e??inin yapraklar??"
                                      " sarabilir ve verim almak zorla??abilir.  ",
                                  //textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 14,
                                    letterSpacing: 0.27,
                                    color: grey,
                                  ),
                                 // maxLines: 3,
                                 // overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 35,
              right: 35,
              child: ScaleTransition(
                alignment: Alignment.center,
                scale: CurvedAnimation(
                    parent: animationController, curve: Curves.fastOutSlowIn),
                child: Card(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: nearlyWhite,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: SizedBox(
                width: AppBar().preferredSize.height,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius:
                    BorderRadius.circular(AppBar().preferredSize.height),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: nearlyBlack,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: nearlyWhite,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: kPrimaryColor,
                ),
              ),
              Text(
                txt2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



