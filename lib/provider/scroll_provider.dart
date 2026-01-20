import 'package:flutter/material.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index, BuildContext context) {
    index == 0
        ? scrollController.animateTo(
            MediaQuery.of(context).size.height * 0.0,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          )
        : null;
  }

  scrollMobile(int index, BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    switch (index) {
      case 0: // HOME
        scrollController.animateTo(height * 0.0, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        break;
      case 1: // ABOUT
        scrollController.animateTo(height * 1.0, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        break;
      case 2: // SERVICES
        scrollController.animateTo(height * 2.1, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        break;
      case 3: // PROJECTS
        scrollController.animateTo(height * 2.8, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        break;
      case 4: // EXPERIENCE
        scrollController.animateTo(height * 3.5, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        break;
      case 5: // CONTACT
        scrollController.animateTo(height * 4.2, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        break;
    }
  }
}
