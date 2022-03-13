import 'package:flutter/material.dart';

class OtpMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OtpMobileState();
  }
}

class _OtpMobileState extends State<OtpMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("OtpApi"),
        ),
        body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 60,left: 90,right: 90),
                        child: Image(
                          image: AssetImage("assets/first.png"),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 20),
                        child: Text("OTP Verification",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 20),
                        child: Text("We will sent you a One Time Password",
                          style: TextStyle(fontSize: 16,color: Colors.grey),),
                      ),
                      Container(
                        alignment: Alignment.center,
                       // margin: EdgeInsets.only(top: 5),
                        child: Text("On this mobile number",
                          style: TextStyle(fontSize: 16,color: Colors.grey),),
                      ),
                    ])
            )
        )
    );
  }
}
