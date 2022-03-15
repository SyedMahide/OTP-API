import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_api/ui/otp/detailsInfo_screen.dart';
class OtpSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpSentPage(),
    );
  }
}

class OtpSentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OtpSentPageState();
  }
}

class _OtpSentPageState extends State<OtpSentPage>{

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _inputNumberOneController = TextEditingController();
  TextEditingController _inputNumberTwoController = TextEditingController();
  TextEditingController _inputNumberThreeController = TextEditingController();
  TextEditingController _inputNumberFourController = TextEditingController();
  var hasError = 0;
  var otp = "0011";

  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("OtpApi"),
     ),
     body: SingleChildScrollView(
       child: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(top: 100, left: 25.5, right: 25.5),
              child: Image(
                image: AssetImage("assets/second.png"),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "OTP Verification",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Enter the Otp sent to +8801674930909",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 40, left: 70, right: 70),
              alignment: Alignment.center,
              child: Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              hasError++;
                            }
                            return null;
                          },
                          controller: _inputNumberOneController,
                          // focusNode: pin2FocusNode,
                          autofocus: true,
                          // obscureText: true,
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                              BorderSide(color: Color(0xffcc0c52)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                              BorderSide(color: Color(0xffcc0c52)),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: TextStyle(
                            color: Color(
                                0xff3a5e44), //// Only numbers can be entered
                          ),
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin2FocusNode);
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              hasError++;
                            }
                            return null;
                          },
                          controller: _inputNumberTwoController,
                          focusNode: pin2FocusNode,
                          autofocus: true,
                          // obscureText: true,
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                              BorderSide(color: Color(0xffcc0c52)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                              BorderSide(color: Color(0xffcc0c52)),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          //
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin3FocusNode);
                          }, // Only numbers can be entered
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              hasError++;
                            }
                            return null;
                          },
                          controller: _inputNumberThreeController,
                          focusNode: pin3FocusNode,
                          autofocus: true,
                          // obscureText: true,
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                              BorderSide(color: Color(0xffcc0c52)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                              BorderSide(color: Color(0xffcc0c52)),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          //
                          onChanged: (value) {
                            nextField(value: value, focusNode: pin4FocusNode);
                          }, // Only numbers can be entered
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              hasError++;
                            }
                            return null;
                          },
                          controller: _inputNumberFourController,
                          focusNode: pin4FocusNode,
                          autofocus: true,
                          //  obscureText: true,
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                              BorderSide(color: Color(0xffcc0c52)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                              BorderSide(color: Color(0xffcc0c52)),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            if (value.length == 1) {
                              pin4FocusNode!.unfocus();}
                          }, // Only numbers can be entered
                          // validator: (value){
                          //   if(value!.isEmpty){
                          //     return "Input can not be empty";
                          //   }else if(value.length <= 4){
                          //     return "Input 4 digit of code";
                          //   }else
                          //     return null;
                          // },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "Did't get the OTP?",
                    style: TextStyle(fontFamily: 'Roboto',
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Resend OTP",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xffcc0c52),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30),
                child: bottomButton()),

          ],
        ),
       ),
     ),
   );
  }
  Widget bottomButton() {
    return MaterialButton(
      onPressed: () {
        print("clicked and hasError " + hasError.toString());
        if (_formKey.currentState!.validate() && hasError == 0) {
          var inputValues = _inputNumberOneController.text +
              _inputNumberTwoController.text +
              _inputNumberThreeController.text +
              _inputNumberFourController.text;
          print("Otp verified " + inputValues);
          if (inputValues.trim() == otp) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailInfo()),
            );
          } else {
            print("otp does not match");
            // otp does not match
          }
        } else {
          print("Filed can not be empty");
          // Filed can not be empty
        }
      },
      color: Color(0xffcc0c52),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        alignment: Alignment.center,
        height: 38,
        width: 150,
        margin: EdgeInsets.only(top: 8, bottom: 8, left: 70, right: 70),
        child: Text(
          "Verified & Proceed",
          style: TextStyle( fontFamily: 'Raleway',
            color: Color(0xfffcfcfc),
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
