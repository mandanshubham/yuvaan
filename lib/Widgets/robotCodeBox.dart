import 'package:flutter/material.dart';
import 'file:///C:/Users/Shubham%20Mandan/AndroidStudioProjects/yuvaan/lib/BottomNavItems/Home/robotStatus.dart';
import 'package:yuvaan/Utils/constants.dart';
import 'package:yuvaan/Utils/sizeConfig.dart';

class RobotCodeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RobotStatus(),
          ),
        );
      },
      child: Container(
        height: SizeConfig.screenWidth * 45 / 375,
        width: SizeConfig.screenWidth * 45 / 375,
        decoration: BoxDecoration(
          color: Color(0xffE7F4EB),
          border: Border.all(
            color: kGreen,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            '1001',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: kGreen),
          ),
        ),
      ),
    );
  }
}
