import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color/app_color.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});


  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: height,
      constraints: BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/flutter_avatar.png',
              width: width,
            ),
          ),
          Text(
            "Hi, \nI'm Md Sabbir Ahmed Sohan\nA Flutter Developer",
            style: TextStyle(
                fontSize: 18,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 160,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.yelloPrimary,
                foregroundColor: CustomColor.whitePrimary,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: Text('Get in touch'),
            ),
          )
        ],
      ),
    );
  }
}
