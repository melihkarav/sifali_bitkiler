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

                                  "    Aloe vera, yapılan araştırmalar sonucu birçok faydası olduğu kaıtlanan,"
                                      " zambakgiller familyasından olan kaktüse benzer bir bitkidir. Aloe Vera"
                                      " bitkisinin popülerliği çok eski zamanlardan günümüze kadar hala devam "
                                      "etmektedir. Kozmetik ürünleri de dahil olmak üzere birçok ilaç tedavisinde"
                                      " kullanılan aloe vera bitkisi ülkemizin güney bölgelerinde, sıcak alanlarda "
                                      "daha çok yetişmektedir. Yaprakları içerisinde saydam jöleye benzer bir özsu "
                                      "bulunduran aloe vera bitkisi faydaları ile adeta şifa dağıtıyor."
                                      "ALOE VERA YETİŞTİRİLİRKEN DİKKAT EDİLMESİ GEREKEN PÜF NOKTALARKışın 10 günde 1 "
                                      "defa yazın ise hafta 1-2 defa ortam sıcaklığına bağlı sulanması kafidir. Sulama "
                                      "yapıldığında saksı içerisindeki toprağın her yerine aynı orantıda su verilmesine"
                                      " özen gösteriniz. Aloe Vera çiçeğinin toprağı çamurumsu kıvamda olmamalıdır.Bitkinize"
                                      " kesinlikle çeşme suyu kullanmayın. Aşırı klor bitkinin kök gözeneklerini kapatarak"
                                      " yapraklarının sağlıksız görünmesine neden olur.Bitki yaz aylarında kesinlikle direk"
                                      " güneş altında bırakılmamalıdır. Direk güneş yapraklarının bozulmasına neden olmaktadır."
                                      "Aloe vera çiçeğinin sağlıklı gelişebilmesi ve bol yaprak açması için kesinlikle kaliteli"
                                      " bitki toprağı kullanılmalıdır. Toprağının vitaminsiz ve kalitesiz olması aloe vera çiçeğinin"
                                      " gelişimine engel olabilir.Aloe vera çiçeği saksısı nisan mayıs ayında senede 1 defa değiştirmeniz"
                                      " uygundur.Direk güneş ışığı almayan yerlerde bakılmalıdır. Aksi taktir de aloe vera çiçeğinin yaprakları"
                                      " sarabilir ve verim almak zorlaşabilir.  ",
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



