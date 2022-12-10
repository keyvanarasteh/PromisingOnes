// ignore_for_file: prefer_const_constructors

import 'package:eksi_sozluk/screens/desktop_page.dart';
import 'package:eksi_sozluk/screens/large_page.dart';
import 'package:eksi_sozluk/screens/mobile_tablet_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String ekranTanimla(double screen) {
    if (screen <= 576) {
      return "mobile";
    } else if (screen <= 768) {
      return "tablet";
    } else if (screen <= 992) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWith = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWith);

    Widget screenType() {
      if (device == "mobile") {
        return MobileTabletPage();
      } else if (device == "tablet") {
        return MobileTabletPage(durum: false);
      } else if (device == "desktop") {
        return DesktopPage();
      } else {
        return LargePage();
      }
    }

    return screenType();
  }
}
