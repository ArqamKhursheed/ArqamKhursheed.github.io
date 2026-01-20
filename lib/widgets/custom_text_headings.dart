import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/theme/theme_provider.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Text(text,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 46,
            height: 1.3,
            color: themeChanger.isDark ? Colors.white : Colors.black));
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Text(text,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w300,
            fontSize: 13,
            color: themeChanger.isDark ? Colors.white : Colors.black87));
  }
}
