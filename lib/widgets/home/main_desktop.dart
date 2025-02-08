import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color/app_color.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi,\nI'm Md Sabbir Ahmed Sohan\nA Flutter Developer",
                style: TextStyle(
                    fontSize: 22,
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
          Image.asset(
            'assets/flutter_avatar.png',
            width: width / 2,
          )
        ],
      ),
    );
  }
}
