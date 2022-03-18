import 'package:flutter/material.dart';
import '../colour/my_colour.dart';
import '../constants/Constants.dart';
import 'login_screen/login.dart';
import 'profile_detail_insertion/user_detail_insertion.dart';
import 'otp_screen/otp_confirm.dart';
import 'otp/otp_sent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.APP_TITLE,
      theme: ThemeData(
          primaryColor: CustomColors.primaryColor,
          accentColor: CustomColors.accentColor,
          fontFamily: 'Constantia'),
      initialRoute: OtpMobile.routeName,
      routes: {
        PinCodeVerificationScreen.routeName: (context) => PinCodeVerificationScreen(""),
        OtpSent.routeName: (context) => OtpSent(),
        OtpMobile.routeName: (context) => OtpMobile(),
        DetailInfo.routeName: (context) => DetailInfo(),
        // HomePage.routeName: (context) => HomePage(),
        // ReviewDetails.routeName: (context) => ReviewDetails()
      },
      debugShowCheckedModeBanner: false,
    );
  }
//
}