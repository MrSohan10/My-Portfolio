import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color/app_color.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Text(
        'Sohan',
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: CustomColor.yelloSecondary),
      ),
    );
  }
}