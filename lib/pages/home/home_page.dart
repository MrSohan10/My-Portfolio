import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color/app_color.dart';
import 'package:my_portfolio/constants/screen/size.dart';
import 'package:my_portfolio/widgets/home/end_drawer_mobile.dart';
import 'package:my_portfolio/widgets/home/header_desktop.dart';

import 'package:my_portfolio/widgets/home/header_mobile.dart';
import 'package:my_portfolio/widgets/home/main_desktop.dart';
import 'package:my_portfolio/widgets/home/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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

              // SKILL
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // PROJECT
              Container(
                height: 500,
                width: double.maxFinite,
              ),
              // CONTACT
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
              ),
            ],
          ));
    });
  }
}
