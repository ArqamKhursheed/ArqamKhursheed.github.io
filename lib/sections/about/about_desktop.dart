import 'package:arqam_portfolio/provider/theme/core_theme.dart';
import 'package:arqam_portfolio/utils/about_utils.dart';
import 'package:arqam_portfolio/utils/work_utils.dart';
import 'package:arqam_portfolio/widgets/aboutme_data.dart';
import 'package:arqam_portfolio/widgets/custom_text_headings.dart';
import 'package:arqam_portfolio/widgets/tech_widgets.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../provider/theme/theme_provider.dart';
import '../../utils/utils.dart';
import '../../widgets/community_button.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final themeProvider = Provider.of<ThemeChanger>(context);

    return Column(
      children: [
        const CustomSectionHeading(
          text: '\nAbout Me',
        ),
        const CustomSectionSubHeading(
          text: 'Get to know me :)',
        ),
        Row(
          children: [
            Expanded(
              child: Image.asset(
                StaticUtils.coloredPhoto,
                height: height * 0.7,
              ),
            ),
            Expanded(
              flex: width < 1230 ? 2 : 1,
              child: Container(
                padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.04,
                    ),
                    const Text(
                      'Who am I?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xff6EF3A5),
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 1.1),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Text(
                      AboutUtils.aboutMeHeadline,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        height: 1.1,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      AboutUtils.aboutMeDetail,
                      style: TextStyle(
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          color: themeProvider.isDark
                              ? Colors.white
                              : const Color(0xff696969)),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      color: Colors.grey[800],
                      thickness: height * 0.003,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text('Technologies I have worked with:',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: themeLight.primaryColor)),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: kTools
                          .map((e) => ToolTechWidget(
                                techName: e,
                              ))
                          .toList(),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Divider(
                      color: Colors.grey[800],
                      thickness: height * 0.003,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            AboutMeData(
                              data: "Name",
                              information: "Arqam Khursheed",
                            ),
                            AboutMeData(
                              data: "Age",
                              information: "20",
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            AboutMeData(
                              data: "Email",
                              information: "arqamkhursheed@gmail.com",
                            ),
                            AboutMeData(
                              data: "From",
                              information: "Karachi, PK",
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: SizedBox(
                            height: height * 0.06,
                            width: width * 0.08,
                            child: OutlinedButton(
                              onPressed: () =>
                                  html.window.open(StaticUtils.resume, 'pdf'),
                              child: const Text(
                                "Resume",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.012,
                        ),
                        Container(
                          color: Colors.grey[900]!,
                          width: width * 0.06,
                          height: height * 0.0025,
                        ),
                        SizedBox(
                          width: width * 0.012,
                        ),
                        Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: WorkUtils.logos
                                .asMap()
                                .entries
                                .map(
                                  (e) => CommunityIconBtn(
                                    icon: e.value,
                                    link: WorkUtils.communityLinks[e.key],
                                    height:
                                        WorkUtils.communityLogoHeight[e.key],
                                  ),
                                )
                                .toList()),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: width < 1230 ? width * 0.05 : width * 0.1,
            ),
          ],
        )
      ],
    );
  }
}
