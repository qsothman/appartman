import 'package:appartman/consts.dart';
import 'package:appartman/screens/address_screen.dart';

import 'package:flutter/material.dart';

class LocationAskWidget extends StatefulWidget {
  @override
  _LocationAskWidgetState createState() => _LocationAskWidgetState();
}

class _LocationAskWidgetState extends State<LocationAskWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15.0),
        topLeft: Radius.circular(15.0),
        bottomLeft: Radius.circular(15.0),
        bottomRight: Radius.circular(15.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.4,
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.025),
              child: Text(
                '“Appartman”, konumunuzu kullanabilsin mi?',
                style: kDescStyle.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015),
              child: Text(
                'Konumu, Appartmanının nerede olduğunu belirlemek için kullanıyoruz',
                style: kDescStyle.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 1.0,
                color: Color(0xffE5E5E5),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Uygulamayı Kullanırken İzin Ver',
                style: kMaptextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color(0xffE5E5E5),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddressScreen(),
                    ),
                  );
                },
                child: Text(
                  'Bir Kez İzin Ver',
                  style: kMaptextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 1.0,
                color: Color(0xffE5E5E5),
              ),
            ),
            Expanded(
              child: Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'İzin Verme',
                    style: kMaptextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
