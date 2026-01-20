import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../animation/entrance_animation.dart';
import '../../utils/utils.dart';
import '../../widgets/social_links.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SizedBox(
        height: size.height * 1.00,
        child: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              right: -50,
              child: Opacity(
                opacity: 0.9,
                child: EntranceFader(
                  offset: const Offset(0, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(
                    StaticUtils.blackWhitePhoto,
                    height: size.height * 0.70,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                size.width * 0.08,
                size.width * 0.16,
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
                      Text(
                        "HEY THERE! ",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            color: Colors.white),
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
                        "Arqam ",
                        style: TextStyle(
                          fontSize: 52,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Khursheed",
                        style: TextStyle(
                          fontSize: 52,
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                        ),
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
                              textStyle: const TextStyle(
                                  fontSize: 22, color: Colors.white),
                            ),
                            TyperAnimatedText(
                              ' Blockchain Developer',
                              speed: const Duration(milliseconds: 50),
                              textStyle: const TextStyle(
                                  fontSize: 22, color: Colors.white),
                            ),
                            TyperAnimatedText(
                              ' A friend :)',
                              speed: const Duration(milliseconds: 50),
                              textStyle: const TextStyle(
                                  fontSize: 22, color: Colors.white),
                            ),
                          ],
                          repeatForever: true,
                          isRepeatingAnimation: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.06,
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
