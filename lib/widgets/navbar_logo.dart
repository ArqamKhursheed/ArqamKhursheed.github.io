import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("< ",
            style: TextStyle(fontSize: 24, color: isDark ? Colors.white : Colors.black)),
        Text("Arqam",
            style: TextStyle(
                fontFamily: 'Agustina',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isDark ? Colors.white : Colors.black)),
        Text(MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
            style: TextStyle(
              fontSize: 24,
              color: isDark ? Colors.white : Colors.black,
            ))
      ],
    );
  }
}
