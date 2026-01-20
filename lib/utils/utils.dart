import 'package:arqam_portfolio/sections/about/about.dart';
import 'package:arqam_portfolio/sections/contact/contact.dart';
import 'package:arqam_portfolio/sections/experience/experience.dart';
import 'package:arqam_portfolio/sections/home/home.dart';
import 'package:arqam_portfolio/sections/services/services.dart';
import 'package:arqam_portfolio/widgets/footer.dart';
import 'package:flutter/material.dart';

import '../sections/portfolio/portfolio.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String oraan = 'assets/work/oraan.png';
  static const String university = 'assets/work/ned.png';
  static const String flutterKhi = 'assets/work/flutter_khi.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "assets/social/facebook-new--v2.png",
    "assets/social/instagram.png",
    "assets/social/twitter.png",
    "assets/social/linkedin.png",
    "assets/social/github.png",
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/arqam.khursheed",
    "https://www.instagram.com/arqam_khursheed/",
    "https://twitter.com/arqam_dev",
    "https://www.linkedin.com/in/arqamkhursheed/",
    "https://github.com/ArqamKhursheed",
  ];

  static const String resume =
      'https://drive.google.com/file/d/1R0q5EtSsqb3SI_zbhpEs1n0uH3fM1PBp/view?usp=sharing';

  static const String gitHub = 'https://github.com/ArqamKhursheed';
}

class BodyUtils {
  static List<Widget> views = [
    Home(),
    About(),
    Services(),
    Portfolio(),
    Experience(),
    Contact(),
    Footer()
  ];
}
