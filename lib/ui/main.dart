import 'package:flutter/material.dart';
import 'package:otp_api/ui/otp/otp_mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpMobile(),
    );
  }
//
}