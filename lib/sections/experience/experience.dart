import 'package:flutter/material.dart';
import '../../responsive/responsive.dart';
import 'experience_desktop.dart';
import 'experience_mobile.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ExperienceMobile(),
      tablet: ExperienceMobile(),
      desktop: ExperienceDesktop(),
    );
  }
}
