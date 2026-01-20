import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../provider/theme/theme_provider.dart';
import '../../responsive/responsive.dart';

class ProjectDetailPage extends StatelessWidget {
  final String projectTitle;
  final String projectDescription;
  final List<String> projectImages;
  final String? website;
  final String? client;
  final String? companyName;
  final List<String>? keyFeatures;
  final List<String>? challenges;
  final List<String>? solutions;
  final String? overview;
  final String? background;
  final String? impact;

  const ProjectDetailPage({
    Key? key,
    required this.projectTitle,
    required this.projectDescription,
    required this.projectImages,
    this.website,
    this.client,
    this.companyName,
    this.keyFeatures,
    this.challenges,
    this.solutions,
    this.overview,
    this.background,
    this.impact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    final isDark = themeChanger.isDark;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: isDark ? Colors.black : Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isDark ? Colors.white : Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          projectTitle,
          style: TextStyle(
            color: isDark ? Colors.white : Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isDesktop(context)
                ? size.width * 0.1
                : Responsive.isTablet(context)
                    ? size.width * 0.05
                    : size.width * 0.04,
            vertical: size.height * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Project Images Carousel
              if (projectImages.isNotEmpty) ...[
                SizedBox(
                  height: Responsive.isDesktop(context)
                      ? size.height * 0.5
                      : Responsive.isTablet(context)
                          ? size.height * 0.4
                          : size.height * 0.3,
                  child: PageView.builder(
                    itemCount: projectImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            projectImages[index],
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey[300],
                                child: const Center(
                                  child: Icon(Icons.image_not_supported),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.03),
              ],

              // Project Info
              if (companyName != null || website != null || client != null) ...[
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: isDark ? Colors.grey[900] : Colors.grey[100],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (companyName != null)
                        _buildInfoRow(
                          'Company',
                          companyName!,
                          Icons.business,
                          isDark,
                        ),
                      if (client != null)
                        _buildInfoRow(
                          'Client',
                          client!,
                          Icons.person,
                          isDark,
                        ),
                      if (website != null)
                        _buildInfoRow(
                          'Website',
                          website!,
                          Icons.language,
                          isDark,
                          isLink: true,
                        ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
              ],

              // Overview
              if (overview != null) ...[
                _buildSectionTitle('Overview', isDark),
                SizedBox(height: size.height * 0.01),
                _buildSectionText(overview!, isDark),
                SizedBox(height: size.height * 0.03),
              ],

              // Background
              if (background != null) ...[
                _buildSectionTitle('Background', isDark),
                SizedBox(height: size.height * 0.01),
                _buildSectionText(background!, isDark),
                SizedBox(height: size.height * 0.03),
              ],

              // Description
              _buildSectionTitle('Description', isDark),
              SizedBox(height: size.height * 0.01),
              _buildSectionText(projectDescription, isDark),
              SizedBox(height: size.height * 0.03),

              // Key Features
              if (keyFeatures != null && keyFeatures!.isNotEmpty) ...[
                _buildSectionTitle('Key Features', isDark),
                SizedBox(height: size.height * 0.01),
                ...keyFeatures!.map((feature) => _buildBulletPoint(feature, isDark)),
                SizedBox(height: size.height * 0.03),
              ],

              // Challenges
              if (challenges != null && challenges!.isNotEmpty) ...[
                _buildSectionTitle('Challenges', isDark),
                SizedBox(height: size.height * 0.01),
                ...challenges!.map((challenge) => _buildBulletPoint(challenge, isDark)),
                SizedBox(height: size.height * 0.03),
              ],

              // Solutions
              if (solutions != null && solutions!.isNotEmpty) ...[
                _buildSectionTitle('Our Solution', isDark),
                SizedBox(height: size.height * 0.01),
                ...solutions!.map((solution) => _buildBulletPoint(solution, isDark)),
                SizedBox(height: size.height * 0.03),
              ],

              // Impact
              if (impact != null) ...[
                _buildSectionTitle('Impact & Results', isDark),
                SizedBox(height: size.height * 0.01),
                _buildSectionText(impact!, isDark),
                SizedBox(height: size.height * 0.03),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, bool isDark) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isDark ? Colors.white : Colors.black,
        fontFamily: 'Poppins',
      ),
    );
  }

  Widget _buildSectionText(String text, bool isDark) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        height: 1.6,
        color: isDark ? Colors.white70 : Colors.black87,
        fontFamily: 'Poppins',
      ),
    );
  }

  Widget _buildBulletPoint(String text, bool isDark) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 12.0),
            child: Icon(
              Icons.check_circle,
              color: const Color(0xff6EF3A5),
              size: 20,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: isDark ? Colors.white70 : Colors.black87,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, IconData icon, bool isDark, {bool isLink = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xff6EF3A5), size: 20),
          const SizedBox(width: 12),
          Text(
            '$label: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : Colors.black,
              fontFamily: 'Poppins',
            ),
          ),
          if (isLink)
            InkWell(
              onTap: () async {
                final uri = Uri.parse('https://$value');
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                }
              },
              child: Text(
                value,
                style: TextStyle(
                  color: const Color(0xff6EF3A5),
                  decoration: TextDecoration.underline,
                  fontFamily: 'Poppins',
                ),
              ),
            )
          else
            Text(
              value,
              style: TextStyle(
                color: isDark ? Colors.white70 : Colors.black87,
                fontFamily: 'Poppins',
              ),
            ),
        ],
      ),
    );
  }
}
