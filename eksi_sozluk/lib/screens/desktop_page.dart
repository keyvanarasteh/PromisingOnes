import 'dart:html';

import 'package:eksi_sozluk/widgets/entry_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/eksi_seyler_widget.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key});

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5),
        child: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Logo Arama
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/eksi_logo_tablet.png',
                          width: 100),
                      SizedBox(width: 20),
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightGreen),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightGreen),
                            ),
                            labelText: 'başlık, #entry, @yazar',
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            suffixIcon: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.arrow_drop_down_sharp),
                                Container(
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child:
                                        Icon(Icons.search, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('giriş'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('kayıt ol'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Menü ve Butonlar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('gündem'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('debe'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('sorunsallar'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('#spor'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('#ilişkiler'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('#siyaset'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/eksi_logo.png',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'pena',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/eksi_logo.png',
                      height: 20,
                      width: 20,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'ekşi şeyler',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //Divider
            Divider(
              height: 5,
              thickness: 3,
            ),
            SizedBox(height: 20),
            //reklam
            Container(
              clipBehavior: Clip.hardEdge,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image.asset(
                'assets/images/reklam.jpg',
                fit: BoxFit.cover,
              ),
            ),
            //anasayfa gündem ve entry
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'gündem',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.settings,
                              size: 16,
                              color: Colors.grey[700],
                            ),
                          ],
                        ),
                        GundemWidget(
                          title: '9 aralık 2022 hollanda arjantin maçı',
                          number: 89,
                        ),
                        GundemWidget(
                          title: 'gibi (dizi)',
                          number: 117,
                        ),
                        GundemWidget(
                          title: 'sıcak kafa',
                          number: 70,
                        ),
                        GundemWidget(
                          title:
                              'türkiye\'deki herkesin gergin ve mutsuz olması',
                          number: 53,
                        ),
                        GundemWidget(
                          title: '9 aralık 2022 hollanda arjantin maçı',
                          number: 89,
                        ),
                        GundemWidget(
                          title: 'gibi (dizi)',
                          number: 117,
                        ),
                        GundemWidget(
                          title: 'sıcak kafa',
                          number: 70,
                        ),
                        GundemWidget(
                          title:
                              'türkiye\'deki herkesin gergin ve mutsuz olması',
                          number: 53,
                        ),
                        GundemWidget(
                          title: '9 aralık 2022 hollanda arjantin maçı',
                          number: 89,
                        ),
                        GundemWidget(
                          title: 'gibi (dizi)',
                          number: 117,
                        ),
                        GundemWidget(
                          title: 'sıcak kafa',
                          number: 70,
                        ),
                        GundemWidget(
                          title:
                              'türkiye\'deki herkesin gergin ve mutsuz olması',
                          number: 53,
                        ),
                        GundemWidget(
                          title: '9 aralık 2022 hollanda arjantin maçı',
                          number: 89,
                        ),
                        GundemWidget(
                          title: 'gibi (dizi)',
                          number: 117,
                        ),
                        GundemWidget(
                          title: 'sıcak kafa',
                          number: 70,
                        ),
                        GundemWidget(
                          title:
                              'türkiye\'deki herkesin gergin ve mutsuz olması',
                          number: 53,
                        ),
                        GundemWidget(
                          title: '9 aralık 2022 hollanda arjantin maçı',
                          number: 89,
                        ),
                        GundemWidget(
                          title: 'gibi (dizi)',
                          number: 117,
                        ),
                        GundemWidget(
                          title: 'sıcak kafa',
                          number: 70,
                        ),
                        GundemWidget(
                          title:
                              'türkiye\'deki herkesin gergin ve mutsuz olması',
                          number: 53,
                        ),
                        SizedBox(height: 10),
                        Text('daha da..'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      EntryWidget(
                        title: '500 liralık saatin 20 liralık saatten farkı',
                        subtitle: '480 lira.',
                        username: 'mertadam',
                        date: '08.01.2019 11:18',
                        imgPath: 'user2.png',
                      ),
                      EntryWidget(
                        title: 'albert einstein',
                        subtitle: 'dahi anlamındaki dede.',
                        username: 'ssg',
                        date: '16.03.2012 23:57',
                        imgPath: 'user2.png',
                      ),
                      EntryWidget(
                        title: 'türkiye\'de kimsenin nefret etmediği tek kişi',
                        subtitle: '(bkz: barış manço)',
                        username: 'gravat',
                        date: '22.11.2016 16:18 ~ 25.05.2022 00:29',
                        imgPath: 'user1.png',
                      ),
                      //her zamanki görünüm
                      //her zamanki görünüm
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'her zamanki görünüme dön',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //ekşi şeyler
                      SizedBox(height: 20),
                      EksiSeylerWidget(
                        subtitle:
                            'Tarihteki İlk Kimyasal Silahın MÖ 256 Yılında Persliler Tarafından Kullanılması',
                        imgPath: 'news1',
                        durum: true,
                      ),
                      EksiSeylerWidget(
                          subtitle: 'Osmanlı Döneminin Komedyenleri: Meddahlar',
                          imgPath: 'news2'),
                      EksiSeylerWidget(
                          subtitle:
                              'Şehrin Çeyreğini Tek Başına Haritadan Silen Felaket: 1666 Büyük Londra Yangını',
                          imgPath: 'news3'),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {},
                        child: Text('ekşi sözlük'),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {},
                        child: Text('ekşi şeyler'),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.front_hand,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Takip et: @sozluk',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              // color: Colors.grey,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text('3,08 Mn takipçi'),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      //Alt-bar
                      Divider(
                        height: 5,
                        thickness: 3,
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 0,
                        runSpacing: 0,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('iletişim'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('şeffaflık raporu'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('reklam'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('kariyer'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('kullanım koşulları'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('gizlilik politikamız'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('sss'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('istatistikler'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('sub-etha'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('instagram'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('twitter'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('facebook'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GundemWidget extends StatelessWidget {
  final String title;
  final int number;
  const GundemWidget({
    Key? key,
    required this.title,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ),
          SizedBox(width: 5),
          Text(
            number.toString(),
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
