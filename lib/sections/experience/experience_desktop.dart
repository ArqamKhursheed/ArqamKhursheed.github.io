import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/theme/theme_provider.dart';
import '../../widgets/custom_text_headings.dart';

class ExperienceDesktop extends StatelessWidget {
  const ExperienceDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    final isDark = themeChanger.isDark;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.1,
        vertical: height * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSectionHeading(
            text: '\nExperience',
          ),
          const CustomSectionSubHeading(
            text: 'My professional journey and achievements\n\n',
          ),
          SizedBox(height: height * 0.03),
          
          // Professional Experience
          _buildExperienceCard(
            context: context,
            isDark: isDark,
            title: 'Software Engineer',
            company: 'Jumppace Pvt Ltd',
            period: '10/2023 - Present',
            location: 'Karachi, Pakistan',
            description: 'Developing and maintaining mobile applications using Flutter and Dart. Working on cross-platform solutions with focus on UI/UX design, state management, and API integration.',
            achievements: [
              'Developed production-ready real-time applications',
              'Built high-quality Flutter apps with aesthetic UI and functionalities',
              'Integrated APIs and implemented state management solutions',
              'Developed AI-supported applications',
            ],
          ),
          
          SizedBox(height: height * 0.04),
          
          // Awards Section
          _buildAwardCard(
            context: context,
            isDark: isDark,
            title: 'Winner Spectrum\'23',
            organization: 'DHA Suffah',
            description: 'Our team emerged victorious in the Flutter app development competition at Spectrum\'23, hosted by DHA Suffah University.',
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceCard({
    required BuildContext context,
    required bool isDark,
    required String title,
    required String company,
    required String period,
    required String location,
    required String description,
    required List<String> achievements,
  }) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[900] : Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xff6EF3A5).withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      company,
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color(0xff6EF3A5),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    period,
                    style: TextStyle(
                      fontSize: 14,
                      color: isDark ? Colors.white70 : Colors.black87,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 16,
                        color: Color(0xff6EF3A5),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        location,
                        style: TextStyle(
                          fontSize: 14,
                          color: isDark ? Colors.white70 : Colors.black87,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: isDark ? Colors.white70 : Colors.black87,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Key Achievements:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : Colors.black,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 12),
          ...achievements.map((achievement) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, right: 12.0),
                      child: Icon(
                        Icons.check_circle,
                        color: const Color(0xff6EF3A5),
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        achievement,
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                          color: isDark ? Colors.white70 : Colors.black87,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildAwardCard({
    required BuildContext context,
    required bool isDark,
    required String title,
    required String organization,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[900] : Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xff6EF3A5).withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xff6EF3A5).withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.emoji_events,
              color: Color(0xff6EF3A5),
              size: 40,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : Colors.black,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  organization,
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color(0xff6EF3A5),
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: isDark ? Colors.white70 : Colors.black87,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
