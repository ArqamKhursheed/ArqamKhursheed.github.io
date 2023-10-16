import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../animation/entrance_animation.dart';
import '../../utils/utils.dart';
import '../../widgets/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SizedBox(
        height: size.height * 1.025,
        // width: size.width * 1.5,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              right: 0,
              child: Opacity(
                opacity: 0.8,
                child: EntranceFader(
                  offset: const Offset(0, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(
                    StaticUtils.blackWhitePhoto,
                    height: size.width < 1200
                        ? size.height * 0.8
                        : size.height * 0.92,
                    // width: size.width * 0.45,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                size.width * 0.07,
                size.width * 0.15,
                0,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "WELCOME TO MY PORTFOLIO! ",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 24),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 1),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          StaticUtils.hi,
                          height: size.height * 0.04,
                        ),
                      ),
                    ],
                  ),
                  // Space.y!,
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Aqram ",
                        style: TextStyle(
                          fontSize: 72,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Khursheed",
                        style: TextStyle(
                            fontSize: 72, fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.play_arrow_rounded,
                          color: Color(0xff6EF3A5),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              ' Flutter Developer',
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(fontSize: 22),
                            ),
                            TyperAnimatedText(
                              ' Blockchain Developer',
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(fontSize: 22),
                            ),
                            TyperAnimatedText(
                              ' A friend :)',
                              speed: const Duration(milliseconds: 50),
                              textStyle: TextStyle(fontSize: 22),
                            ),
                          ],
                          repeatForever: true,
                          isRepeatingAnimation: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  const SocialLinks(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
