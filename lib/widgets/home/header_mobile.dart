import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/home/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onMenuTab;
  const HeaderMobile({
    super.key,
    this.onMenuTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 50,
      width: double.maxFinite,
      decoration: kHederDecoration,
      child: Row(
        children: [
          SiteLogo(),
          Spacer(),
          IconButton(
            onPressed: onMenuTab,
            icon: Icon(Icons.menu),
          ),
          SizedBox(width: 15)
        ],
      ),
    );
  }
}
