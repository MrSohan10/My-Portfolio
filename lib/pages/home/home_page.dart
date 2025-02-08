import 'package:flutter/material.dart';

import 'package:my_portfolio/constants/screen/size.dart';
import 'package:my_portfolio/widgets/home/end_drawer_mobile.dart';
import 'package:my_portfolio/widgets/home/header_desktop.dart';

import 'package:my_portfolio/widgets/home/header_mobile.dart';
import 'package:my_portfolio/widgets/home/main_desktop.dart';
import 'package:my_portfolio/widgets/home/main_mobile.dart';
import 'package:my_portfolio/widgets/home/plateforms_and_skills.dart';
import 'package:my_portfolio/widgets/home/projects_section.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {


    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= kMinDesktoWidth
              ? null
              : EndDrawerMobile(scaffoldKey: scaffoldKey),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIN Header
              if (constraints.maxWidth >= kMinDesktoWidth)
                HeaderDesktop()
              else
                HeaderMobile(
                  onMenuTab: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              // main
              if (constraints.maxWidth >= kMinDesktoWidth)
                MainDesktop()
              else
                MainMobile(),
              // platforms and skills
              PlateformsAndSkills(constraints: constraints,),
                    // PROJECTS
              ProjectsSection(
               
              ),
            ],
          ));
    });
  }
}

