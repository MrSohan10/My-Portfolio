import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color/app_color.dart';
import 'package:my_portfolio/constants/screen/size.dart';
import 'package:my_portfolio/widgets/home/skills_desktop.dart';
import 'package:my_portfolio/widgets/home/skills_mobile.dart';

class PlateformsAndSkills extends StatelessWidget {
  const PlateformsAndSkills({super.key, required this.constraints});
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // title
          const Text(
            "What I can do",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),

          if (constraints.maxWidth >= kMedDesktopWidth)
            const SkillsDesktop()
          else
            const SkillsMobile(),
        ],
      ),
    );
  }
}
