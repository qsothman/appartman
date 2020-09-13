import 'package:appartman/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PhoneEnterScreenInput extends StatefulWidget {
  @override
  _PhoneEnterScreenInputState createState() => _PhoneEnterScreenInputState();
}

class _PhoneEnterScreenInputState extends State<PhoneEnterScreenInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      height: MediaQuery.of(context).size.height * 0.065,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.70,
              height: MediaQuery.of(context).size.height * 0.065,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(33.0),
                  topRight: Radius.circular(33.0),
                  bottomLeft: Radius.circular(33.0),
                  bottomRight: Radius.circular(33.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(42, 55, 71, 0.15),
                      offset: Offset(0, 3.3),
                      blurRadius: 6.62),
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.phone,
            onChanged: (value) {},
            decoration: InputDecoration(
              hintText: '0 (500) 000 00 00',
              hintStyle: kDescStyle.copyWith(fontSize: 16.0),
              border: InputBorder.none,
            ),
          ),
          Positioned(
            top: 13.71,
            left: 27.15,
            child: Container(
              width: 23.27,
              height: 20.57,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    top: 0.58,
                    left: 1.93,
                    child: SvgPicture.asset('assets/images/ic_round-phone.svg',
                        semanticsLabel: 'vector'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
