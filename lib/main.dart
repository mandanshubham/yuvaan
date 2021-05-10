import 'package:flutter/material.dart';
import 'package:yuvaan/Authentication/phoneVerification.dart';
import 'package:yuvaan/bottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: PhoneVerification(),
    );
  }
}
