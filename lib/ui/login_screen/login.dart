//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_api/ui/otp/otp_sent.dart';

import '../../colour/my_colour.dart';
import '../otp_screen/otp_confirm.dart';

class OtpMobile extends StatefulWidget {
  static const routeName = '/login_screen';

  @override
  State<StatefulWidget> createState() {
    return _OtpMobileState();
  }
}

class _OtpMobileState extends State<OtpMobile> {
  double screenWidth = 0;
  late TextEditingController inputNumberController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    inputNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Container(
                alignment: Alignment.center,
                height: 250,
                width: 250,
                margin: const EdgeInsets.only(top: 20, left: 0, right: 50),
                child: const Image(
                  image: AssetImage("assets/first.png"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  "OTP Verification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: RichText(
                  text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'we will send you an',
                            style: TextStyle(fontSize: 15)),
                        TextSpan(
                            text: ' One Time Password',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: '\non this mobile number',
                            style: TextStyle(fontSize: 15)),
                      ],
                      style: TextStyle(color: Colors.black54, fontSize: 15)),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: CustomColors.primaryColor,
                                width: 3)),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: double.maxFinite,
                              alignment: Alignment.center,
                              color: CustomColors.primaryColor,
                              child: const Text(
                                "+88",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(
                                    left: 10, bottom: 6),
                                child: TextFormField(
                                  onChanged: (text) {},
                                  controller: inputNumberController,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter
                                        .digitsOnly
                                  ],
                                  style: const TextStyle(
                                      color: CustomColors.primaryColor,
                                      fontSize: 20),
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 30,
                        height: 45,
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: CustomColors.primaryColor
                                  .withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],

                          // border: Border.all(
                          //     color: CustomColors.primaryColor, width: 3),
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: CustomColors.primaryColor,
                          onPressed: () {
                            //_onClickLogin("verificationId", 1, "+8801686352645");
                            if (_formKey.currentState!.validate()) {
                              var isValidate =
                              _phoneNumberValidator(
                                  inputNumberController.text
                                      .toString());
                              if (!isValidate) {

                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PinCodeVerificationScreen(
                                          inputNumberController.text),
                                    ));
                                /*MaterialPageRoute(
                                    builder: (context) =>
                                        PinCodeVerificationScreen("+88${inputNumberController.text}"),);*/
                                // Navigator.of(context).pushReplacementNamed(PinCodeVerificationScreen.routeName);
                              }
                            }
                          },
                          child: const Text(
                            "GET OTP",
                            style: TextStyle(color: Colors.white, decoration: TextDecoration.underline,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             /* Container(
                height: 50,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 40),
                child: MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PinCodeVerificationScreen("+8801686352645")),
                      );
                      //  print("Sucessfull");
                      return;
                    } else {
                      print("Not worked");
                    }
                  },
                  color: const Color(0xffcc0c52),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 150,
                    margin: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 30, right: 30),
                    child: const Text(
                      "GET OTP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Raleway",
                          fontStyle: FontStyle.normal,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),*/
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Login with gmail",
                    style: TextStyle(color: Colors.black, decoration: TextDecoration.underline,),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  bool _phoneNumberValidator(String value) {
    String pattern = r'^(?:\+88|01)?\d{11}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

}
