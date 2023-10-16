import 'package:arqam_portfolio/responsive/responsive.dart';
import 'package:arqam_portfolio/sections/services/services_desktop.dart';
import 'package:arqam_portfolio/sections/services/services_mobile.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
