import 'package:flutter/material.dart';

class EksiSeylerWidget extends StatelessWidget {
  final String subtitle;
  final String imgPath;
  final bool durum;
  final double size;
  const EksiSeylerWidget({
    Key? key,
    required this.subtitle,
    this.durum = false,
    required this.imgPath,
    this.size = 0.6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: durum
                ? Border(
                    top: BorderSide(
                      color: Colors.blue,
                      width: 5,
                    ),
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  )
                : Border(
                    bottom: BorderSide(
                    color: Colors.grey,
                  )),
          ),
          width: MediaQuery.of(context).size.width * size,
          height: 120,
          child: SingleChildScrollView(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //üst kısım
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/eksi_logo.png',
                                  color: Colors.blue,
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'TARİH',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.menu_book_outlined,
                                  size: 12,
                                  color: Colors.lightGreen,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '20,8b',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            subtitle,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // height: double.infinity,
                    // width: double.infinity,
                    // color: Colors.red,
                    child: Image.asset(
                      'assets/images/$imgPath.jpg',
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
