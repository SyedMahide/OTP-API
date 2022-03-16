//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_api/ui/otp/otp_sent.dart';

class OtpMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OtpMobileState();
  }
}

class _OtpMobileState extends State<OtpMobile> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("OtpApi"),
        ),
        body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 60, left: 90, right: 90),
                          child: const Image(
                            image: AssetImage("assets/first.png"),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text(
                            "OTP Verification",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 20),
                          child: const Text(
                            "We will sent you a One Time Password",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          // margin: EdgeInsets.only(top: 5),
                          child: const Text(
                            "On this mobile number",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 40, left: 24,right: 24),
                          child: Row(
                            children: [
                              Expanded(
                               //   flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(

                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: const Color(0xffcc0c52),
                                      ),
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5.0), bottomLeft: const Radius.circular(5.0)),
                                      color: const Color(0xffcc0c52),
                                    ),
                                    alignment: Alignment.center,
                                    height: 60,
                                    child: const Text("+88",style: TextStyle(color: Colors.white),),
                                    //color: Colors.red,
                                    // margin: EdgeInsets.only(left: 5,right: 5),
                                  )),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return "Enter valid number";
                                      }
                                      if (!RegExp(r'^(?:\+88|01)?\d{11}$')
                                          .hasMatch(value)) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                      floatingLabelBehavior: FloatingLabelBehavior.never,
                                      border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                                        borderSide: BorderSide(color: Color(0xffcc0c52)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
                                        borderSide: BorderSide(color: Color(0xffcc0c52)),
                                      ),
                                      labelText: "Enter Mobile Number",
                                      labelStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Color(0xffcc0c52),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    keyboardType: TextInputType.phone,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(11),
                                    ],
                                  ),
                                 // margin: EdgeInsets.only(left: 5, right: 5),
                                ),
                              ),

                            ],
                          ),

                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 40),
                          child: MaterialButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OtpSent()),
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
                              height: 35,
                              width: 150,
                              margin: const EdgeInsets.only(top: 8, bottom: 8,left: 70, right: 70),
                              child: const Text(
                                "GET OTP",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Raleway",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 22),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 20),
                          child: MaterialButton(
                            onPressed: (){},
                            child: const Text("Login with gmail",style: TextStyle(color: Colors.black),),
                          ),
                        ),
                      ]),
                ))));
  }
}
