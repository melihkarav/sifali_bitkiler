import 'package:flutter/material.dart';

import '../../../constants.dart';

class TextBody extends StatelessWidget {
  const TextBody({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Container(
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
          style: TextStyle(
            fontSize: 18,
            //fontFamily: 'DancingScript',

          ),
        ),
      ),
    );
  }
}
