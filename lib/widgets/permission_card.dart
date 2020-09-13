import 'package:appartman/consts.dart';
import 'package:appartman/widgets/location_ask_widget.dart';
import 'package:appartman/widgets/verify_location_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PermissionCard extends StatefulWidget {
  @override
  _PermissionCardState createState() => _PermissionCardState();
}

class _PermissionCardState extends State<PermissionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.125),
                child: SvgPicture.asset('assets/images/location.svg'),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.025),
              ),
              Text(
                'Konum Servisleri',
                textAlign: TextAlign.center,
                style: kDescStyle.copyWith(color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.015),
              ),
              Text(
                'Appartmanına giriş yapabilmen için konum servislerine izin verir misin?',
                textAlign: TextAlign.center,
                style: kDescStyle.copyWith(fontSize: 16.0),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.04),
              ),
              FlatButton(
                child: VerifyLocationWidget(),
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      backgroundColor: Colors.transparent,
                      // insetPadding: EdgeInsets.zero,
                      // contentPadding: EdgeInsets.zero,
                      content: LocationAskWidget(),
                    ),
                    barrierDismissible: false,
                  );
                },
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Geri',
                    style: kDescStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
