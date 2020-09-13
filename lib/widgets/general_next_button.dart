import 'package:flutter/material.dart';

class GeneralNextButton extends StatefulWidget {

  @override
  _GeneralNextButtonState createState() => _GeneralNextButtonState();
}

class _GeneralNextButtonState extends State<GeneralNextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.70,
      height: MediaQuery.of(context).size.height *0.065,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width *0.70,
              height: MediaQuery.of(context).size.height *0.07,
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
                      offset: Offset(0, 3.31),
                      blurRadius: 6.62)
                ],
                color: Color.fromRGBO(121, 102, 254, 1),
              ),
            ),
          ),
//

          Container(
            child: Center(
              child: Text(
               'Devam',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(248, 248, 248, 1),
                    fontFamily: 'SF PRO',
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1.28),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

