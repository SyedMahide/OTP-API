import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  static const routeName = '/profileDetailInfoInsert';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailInfoPage(),
    );
  }
}

class DetailInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailInfoPageState();
  }
}

class _DetailInfoPageState extends State<DetailInfoPage> {
  int seleectValue1 = 0;
  int seleectValue2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DetailsInfo"),
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 160, left: 24, right: 24),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 40, left: 24, right: 24),
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
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0)),
                                // color: Color(0xffcc0c52),
                              ),
                              alignment: Alignment.center,
                              height: 60,
                              child: const Icon(
                                Icons.person,
                                color: Color(0xffcc0c52),
                              ))),
                      Expanded(
                        flex: 5,
                        child: Container(
                          alignment: Alignment.center,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: const Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)),
                                borderSide:
                                    BorderSide(color: Color(0xffcc0c52)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5.0),
                                    bottomRight: const Radius.circular(5.0)),
                                borderSide:
                                    BorderSide(color: const Color(0xffcc0c52)),
                              ),
                              labelText: "Shimano Ahmed",
                              labelStyle: TextStyle(
                                fontFamily: 'Roboto',
                                color: const Color(0xffcc0c52),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          // margin: EdgeInsets.only(left: 5, right: 5),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20, left: 24, right: 24),
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
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0)),
                                // color: Color(0xffcc0c52),
                              ),
                              alignment: Alignment.center,
                              height: 60,
                              child: const Icon(
                                Icons.wheelchair_pickup_sharp,
                                color: Color(0xffcc0c52),
                              ))),
                      Expanded(
                        flex: 5,
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xffcc0c52),
                              ),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0)),
                              // color: Color(0xffcc0c52),
                            ),
                            height: 60,
                            child: ListView(children: [
                              RadioListTile(
                                value: 0,
                                groupValue: seleectValue1,
                                title: const Text(
                                  'Male',
                                  style: TextStyle(color: Color(0xffcc0c52)),
                                ),
                                onChanged: (value) => setState(() {
                                  seleectValue1 = 0;
                                }),
                              ),
                              RadioListTile(
                                value: 1,
                                groupValue: seleectValue1,
                                title: const Text(
                                  'Male',
                                  style: const TextStyle(color: Color(0xffcc0c52)),
                                ),
                                onChanged: (value) => setState(() {
                                  seleectValue1 = 1;
                                }),
                              )
                            ])

                            // margin: EdgeInsets.only(left: 5, right: 5),
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20, left: 24, right: 24),
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
                                borderRadius: const BorderRadius.only(
                                    topLeft: const Radius.circular(5.0),
                                    bottomLeft: const Radius.circular(5.0)),
                                // color: Color(0xffcc0c52),
                              ),
                              alignment: Alignment.center,
                              height: 60,
                              child: const Icon(
                                Icons.wheelchair_pickup_sharp,
                                color: const Color(0xffcc0c52),
                              ))),
                      Expanded(
                        flex: 5,
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xffcc0c52),
                              ),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(5.0),
                                  bottomRight: Radius.circular(5.0)),
                              // color: Color(0xffcc0c52),
                            ),
                            height: 60,
                            child: ListView(children: [
                              RadioListTile(
                                value: 2,
                                groupValue: seleectValue2,
                                title: const Text(
                                  'User',
                                  style: TextStyle(color: Color(0xffcc0c52)),
                                ),
                                onChanged: (value) => setState(() {
                                  seleectValue2 = 2;
                                }),
                              ),
                              RadioListTile(
                                value: 3,
                                groupValue: seleectValue2,
                                title: const Text(
                                  'Amin',
                                  style: TextStyle(color: Color(0xffcc0c52)),
                                ),
                                onChanged: (value) => setState(() {
                                  seleectValue2 = 3;
                                }),
                              )
                            ])

                            // margin: EdgeInsets.only(left: 5, right: 5),
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20, left: 24, right: 24),
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
                                borderRadius: const BorderRadius.only(
                                    topLeft: const Radius.circular(5.0),
                                    bottomLeft: const Radius.circular(5.0)),
                                // color: Color(0xffcc0c52),
                              ),
                              alignment: Alignment.center,
                              height: 60,
                              child: const Icon(
                                Icons.picture_in_picture_sharp,
                                color: const Color(0xffcc0c52),
                              ))),
                      Expanded(
                        flex: 5,
                        child: Container(
                          alignment: Alignment.centerLeft,

                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: const Color(0xffcc0c52),
                            ),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(5.0),
                                bottomRight: const Radius.circular(5.0)),
                            // color: Color(0xffcc0c52),
                          ),
                          height: 60,
                          child: const Text(
                            "Take a profile picture",
                            style: const TextStyle(color: Color(0xffcc0c52)),
                          ),
                          // margin: EdgeInsets.only(left: 5, right: 5),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 100),
                  child: MaterialButton(
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => OtpSent()),
                      //   );
                      //   //  print("Sucessfull");
                      //   return;
                      // } else {
                      //   print("Not worked");
                      // }
                    },
                    color: const Color(0xffcc0c52),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 150,
                      margin: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 70, right: 70),
                      child: const Text(
                        "Done",
                        style: const TextStyle(
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
              ],
            ),
          ),
        ));
  }
}
