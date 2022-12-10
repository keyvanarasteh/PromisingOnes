import 'package:flutter/material.dart';

class EntryWidget extends StatelessWidget {
  const EntryWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.username,
    required this.date,
    required this.imgPath,
  }) : super(key: key);

  final String date;
  final String imgPath;
  final String subtitle;
  final String title;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 20),
          Text(subtitle),
          SizedBox(height: 10),
          //up down share button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //up and down icon
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(
                        Icons.arrow_upward_outlined,
                        size: 14,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(
                        Icons.arrow_downward_outlined,
                        size: 14,
                      ),
                    ),
                  ],
                ),
                //share icon
                Row(
                  children: const [
                    Icon(
                      Icons.ios_share_outlined,
                      size: 18,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.polyline_outlined,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          //user profile
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(username),
                    SizedBox(height: 5),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/$imgPath'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
