import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../animation/entrance_animation.dart';
import '../provider/scroll_provider.dart';

class NavBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    Size size = MediaQuery.of(context).size;

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          children: [
            MaterialButton(
              splashColor: Colors.white54,
              highlightColor: Colors.white54,
              hoverColor: Color(0xff6EF3A5),
              onPressed: () {
                scrollProvider.scrollMobile(index, context);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.015),
                child: Text(
                  label,
                  style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
