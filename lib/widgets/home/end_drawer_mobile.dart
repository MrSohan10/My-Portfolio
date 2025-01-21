import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color/app_color.dart';
import 'package:my_portfolio/constants/nav/nav_items.dart';

class EndDrawerMobile extends StatelessWidget {
  const EndDrawerMobile({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.closeEndDrawer();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.only(left: 30),
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
