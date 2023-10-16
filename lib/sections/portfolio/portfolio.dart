import 'package:arqam_portfolio/sections/portfolio/desktop_protfolio.dart';
import 'package:arqam_portfolio/sections/portfolio/mobile_portfolio.dart';
import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
