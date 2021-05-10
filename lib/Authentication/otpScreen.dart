import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuvaan/Utils/constants.dart';
import 'package:yuvaan/Utils/sizeConfig.dart';
import 'package:yuvaan/bottom.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 95 / 812),
              Container(
                height: SizeConfig.screenHeight * 130 / 812,
                width: SizeConfig.screenWidth,
                margin:
                    EdgeInsets.only(right: SizeConfig.screenWidth * 30 / 375),
                child: Container(
                  child: Image.asset('assets/images/otp_vector.png'),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 30 / 812),
              Text(
                'OTP Verification',
                style: TextStyle(
                  color: kGreen,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 5 / 812),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 32 / 375),
                child: Text(
                  'A 6 Digit One Time Password is sent to your\nmobile number 9898989898',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kTextColorGrey,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 40 / 812),
              Container(
                width: SizeConfig.screenWidth * 310 / 375,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OTPField(),
                    OTPField(),
                    OTPField(),
                    OTPField(),
                    OTPField(),
                    OTPField(),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: 5,
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 40 / 812,
            child: MaterialButton(
              elevation: 0,
              color: kGreen,
              minWidth: SizeConfig.screenWidth * 310 / 375,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomItems(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Verify & Proceed',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 25 / 812),
        ],
      ),
    );
  }
}

class OTPField extends StatelessWidget {
  const OTPField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 30 / 375,
      child: TextField(
        keyboardType: TextInputType.number,
        cursorColor: Colors.black,
      ),
    );
  }
}
