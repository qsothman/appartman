import 'package:appartman/consts.dart';
import 'package:appartman/screens/address_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:appartman/widgets/phone_enter_screen_input.dart';
import 'package:appartman/widgets/general_next_button.dart';
import 'package:appartman/screens/phone_verfication_screen.dart';

class PhoneEnterScreen extends StatefulWidget {
  @override
  _PhoneEnterScreenState createState() => _PhoneEnterScreenState();
}

class _PhoneEnterScreenState extends State<PhoneEnterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            left: MediaQuery.of(context).size.width * 0.025,
          ),
          child: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                ),
                SvgPicture.asset(
                  'assets/images/phoneillustration.svg',
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                ),
                Text(
                  'Hesabını onaylamamız için telefon numaranı girer misin?',
                  style: kDescStyle.copyWith(
                    color: Color(0xff24253D),
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                ),

                PhoneEnterScreenInput(),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                ),
                FlatButton(
                  child: GeneralNextButton(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneVerificationScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
