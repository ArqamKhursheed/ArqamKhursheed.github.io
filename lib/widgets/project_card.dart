import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../provider/theme/theme_provider.dart';
import '../responsive/responsive.dart';
import '../sections/portfolio/project_detail_page.dart';
import '../utils/project_utils.dart';

class ProjectCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;
  final int? projectIndex; // Index for project detail page

  const ProjectCard({
    Key? key,
    this.banner,
    this.projectIcon,
    this.projectLink,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
    this.projectIndex,
  }) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (widget.projectIndex != null) {
          final projectDetails = ProjectUtils.getProjectDetails();
          if (widget.projectIndex! < projectDetails.length) {
            final project = projectDetails[widget.projectIndex!];
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProjectDetailPage(
                  projectTitle: project['title'] as String,
                  projectDescription: project['description'] as String,
                  projectImages: ProjectUtils.detailImages[widget.projectIndex!],
                  website: project['website'] as String?,
                  client: project['client'] as String?,
                  companyName: project['companyName'] as String?,
                  keyFeatures: project['keyFeatures'] as List<String>?,
                  challenges: project['challenges'] as List<String>?,
                  solutions: project['solutions'] as List<String>?,
                  overview: project['overview'] as String?,
                  background: project['background'] as String?,
                  impact: project['impact'] as String?,
                ),
              ),
            );
          }
        } else if (widget.projectLink != null) {
          openURL(widget.projectLink!);
        }
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(10),
        margin: Responsive.isDesktop(context)
            ? EdgeInsets.symmetric(horizontal: width * 0.01)
            : null,
        width: Responsive.isDesktop(context)
            ? width * 0.32
            : Responsive.isTablet(context)
                ? width * 0.42
                : width * 0.75,
        height: Responsive.isDesktop(context)
            ? height * 0.38
            : Responsive.isTablet(context)
                ? height * 0.38
                : height * 0.22,
        transform: Matrix4.identity()..scale(isHover ? 1.02 : 1.0),
        decoration: BoxDecoration(
          color: themeChanger.isDark ? Colors.grey.shade900 : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: isHover
              ? Border.all(
                  color: const Color(0xff6EF3A5).withOpacity(0.5),
                  width: 2,
                )
              : null,
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: const Color(0xff6EF3A5).withAlpha(200),
                    blurRadius: 20.0,
                    spreadRadius: 2.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.projectIcon != null
                    ? (width > 1135 || width < 950)
                        ? Image.asset(
                            widget.projectIcon!,
                            height: height * 0.05,
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                widget.projectIcon!,
                                height: height * 0.03,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                widget.projectTitle,
                                // style: AppText.b2b,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                    : Container(),
                widget.projectIconData != null
                    ? Icon(
                        widget.projectIconData,
                        color: const Color(0xff6EF3A5),
                        size: height * 0.1,
                      )
                    : Container(),
                (width > 1135 || width < 950)
                    ? SizedBox(
                        height: height * 0.02,
                      )
                    : const SizedBox(),
                (width > 1135 || width < 950)
                    ? Text(
                        widget.projectTitle,
                        style: const TextStyle(
                            fontFamily: 'Poppins-Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        textAlign: TextAlign.center,
                      )
                    : Container(),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  widget.projectDescription,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'Poppins-Light', height: 1.5, fontSize: 15),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.banner != null
                    ? Image.asset(
                        widget.banner!,
                      )
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
