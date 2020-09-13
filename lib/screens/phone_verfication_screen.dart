import 'package:appartman/consts.dart';
import 'package:appartman/screens/address_screen.dart';
import 'package:appartman/screens/permission_screen.dart';
import 'package:appartman/widgets/phone_verifaction_code_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:appartman/widgets/general_next_button.dart';

class PhoneVerificationScreen extends StatefulWidget {
  @override
  _PhoneVerificationScreenState createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                  ),
                  SvgPicture.asset(
                    'assets/images/msgillustration.svg',
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
                  ),
                  Text(
                    'Sms ile gelen kodu aşağı girer misin?',
                    style: kDescStyle.copyWith(
                      color: Color(0xff24253D),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01),
                  ),
                  Text(
                    '01:54',
                    style: kDescStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03),
                  ),
                  PhoneVerificationCodeInput(),
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
                          builder: (context) => PermissionScreen(),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          child: Text(
                            'numaranı değiştir',
                            style: kDescStyle,
                          ),
                          onPressed: () {},
                        ),
                        FlatButton(
                          padding: EdgeInsets.only(
                              bottom:
                                  MediaQuery.of(context).size.height * 0.01),
                          child: Text(
                            'kodu almadım',
                            style: kDescStyle,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
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
