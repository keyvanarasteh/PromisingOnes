import 'package:flutter/material.dart';

import '../widgets/eksi_seyler_widget.dart';
import '../widgets/entry_widget.dart';

class MobileTabletPage extends StatefulWidget {
  bool durum;
  MobileTabletPage({this.durum = true});
  @override
  State<MobileTabletPage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobileTabletPage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Logo ve Arama
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  widget.durum
                      ? Image.asset(
                          'assets/images/eksi_logo.png',
                          width: 25,
                          height: 25,
                        )
                      : Image.asset('assets/images/eksi_logo_tablet.png',
                          width: 100),
                  SizedBox(width: 20),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.7,
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
                                child: Icon(Icons.search, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                  child: Text('kanallar'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('giriş'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('kayıt ol'),
                ),
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
                Image.asset(
                  'assets/images/eksi_logo.png',
                  height: 20,
                  width: 20,
                  color: Colors.blue,
                ),
              ],
            ),
            //Divider
            Divider(
              height: 5,
              thickness: 3,
            ),
            SizedBox(height: 20),
            //Reklam
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
            //Entry
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
            EntryWidget(
              title: 'miloş teodosiç',
              subtitle:
                  'sırbistan milli takımının 1987 doğumlu 195 cm boyundaki guardı. halihazırda olympiakos takımın kadrosundadır. belki nba olamıyacak ama çok akıllı ve delici bir europlayer olacağı bugünkü sırbistan türkiye maçında belli oldu. bana göre çok daha tanınan takımdaşları novica velickovic milenko tepic ve uros tripkovic\'den çok daha büyük bir oyuncu olacak. bu maçta sinan güler ve ömer onan tarafından savunuldu. her drive\'ına yardım getirildi ama o boş oyuncuyu buldu. hem şutörleri hem de uzunları oyuna katmayı biliyor ve takıma tempo getiriyor ancak fiziksel olarak biraz zayıfça ve sinirli bir oyuncu. tecrübe kazandıkça durdurulamaz olabilir. izlemeye değer bir oyuncu.',
              username: 'hans pfaal',
              date: '10.08.2008 23:08 ~ 23:09',
              imgPath: 'user2.png',
            ),
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
            //social media
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
    );
  }
}
