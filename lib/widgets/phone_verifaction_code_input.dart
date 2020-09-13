import 'package:appartman/consts.dart';
import 'package:flutter/material.dart';

class PhoneVerificationCodeInput extends StatefulWidget {
  @override
  _PhoneVerificationCodeInputState createState() =>
      _PhoneVerificationCodeInputState();
}

class _PhoneVerificationCodeInputState
    extends State<PhoneVerificationCodeInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.70,
        height: MediaQuery.of(context).size.height * 0.065,
        child: Stack(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            height: MediaQuery.of(context).size.height * 0.065,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(42, 55, 71, 0.15),
                    offset: Offset(0, 3.31),
                    blurRadius: 6.62)
              ],
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                maxLength: 4,
                onChanged: (val) {},
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          // Positioned(
          //     top: 13.7,
          //     left: 27.15,
          //     child: Container(
          //         width: 23.27,
          //         height: 20.57,
          //         decoration: BoxDecoration(
          //           color: Color.fromRGBO(255, 255, 255, 1),
          //         ),
          //         child: Stack(children: <Widget>[]))),
          Positioned(
              top: 34,
              left: 46,
              child: Container(
                  width: 174,
                  height: 4.0,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0.0001220703125,
                        left: 0,
                        child: Container(
                            width: 36,
                            height: 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2),
                                bottomLeft: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                              color: Color.fromRGBO(241, 241, 241, 1),
                            ))),
                    Positioned(
                        top: 0,
                        left: 46,
                        child: Container(
                            width: 36,
                            height: 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2),
                                bottomLeft: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                              color: Color.fromRGBO(241, 241, 241, 1),
                            ))),
                    Positioned(
                        top: 0,
                        left: 92,
                        child: Container(
                            width: 36,
                            height: 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2),
                                bottomLeft: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                              color: Color.fromRGBO(241, 241, 241, 1),
                            ))),
                    Positioned(
                        top: 0,
                        left: 138,
                        child: Container(
                            width: 36,
                            height: 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2),
                                bottomLeft: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                              color: Color.fromRGBO(241, 241, 241, 1),
                            ))),
                  ]))),
        ]));
  }
}
