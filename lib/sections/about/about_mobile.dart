import 'package:arqam_portfolio/utils/about_utils.dart';
import 'package:arqam_portfolio/utils/work_utils.dart';
import 'package:arqam_portfolio/widgets/aboutme_data.dart';
import 'package:arqam_portfolio/widgets/community_button.dart';
import 'package:arqam_portfolio/widgets/custom_text_headings.dart';
import 'package:arqam_portfolio/widgets/tech_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;
import '../../constants.dart';
import '../../provider/theme/theme_provider.dart';
import '../../utils/utils.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final themeProvider = Provider.of<ThemeChanger>(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Column(
            children: [
              const CustomSectionHeading(
                text: '\nAbout Me',
              ),
              const CustomSectionSubHeading(
                text: 'Get to know me :)',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Image.asset(
                StaticUtils.mobilePhoto,
                height: height * 0.27,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Who am I?",
                  style: TextStyle(
                      color: Color(0xff6EF3A5),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                AboutUtils.aboutMeHeadline,
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold),
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
                    fontSize: 12,
                    color: themeProvider.isDark
                        ? Colors.white
                        : const Color(0xff696969)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Divider(
                color: Colors.grey[800],
                thickness: 1,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const Text(
                'Technologies I have worked with:',
                style: TextStyle(
                    color: Color(0xff6EF3A5),
                    fontFamily: 'Poppins',
                    fontSize: 12),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: kTools
                    .map(
                      (e) => ToolTechWidget(techName: e),
                    )
                    .toList(),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Divider(
                color: Colors.grey[800],
                thickness: 1,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const AboutMeData(
                data: "Name",
                information: "Arqam Khursheed",
              ),
              const AboutMeData(
                data: "Email",
                information: "Arqamkhursheed@gmail.com",
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        OutlinedButton(
            child: const Text(
              "Resume",
              style: TextStyle(color: Color(0xff6EF3A5)),
            ),
            onPressed: () {
              kIsWeb
                  ? html.window.open(StaticUtils.resume, "pdf")
                  : openURL(StaticUtils.resume);
            }),
        SizedBox(
          height: height * 0.04,
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
                    height: WorkUtils.communityLogoHeight[e.key],
                  ),
                )
                .toList()),
      ],
    );
  }
}
