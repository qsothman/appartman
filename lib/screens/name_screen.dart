import 'package:appartman/consts.dart';
import 'package:appartman/screens/main_screen.dart';
import 'package:appartman/widgets/general_next_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NameScreen extends StatefulWidget {
  @override
  _NameScreenState createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xffF9F9F9),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: SvgPicture.asset('assets/images/logo.svg'),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.22),
                child: Text(
                  'Size nasıl hitap edelim?',
                  style: kDescStyle.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                child: NameScreenNameInput(),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                    left: MediaQuery.of(context).size.width * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '5',
                      style: kDescStyle.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/namescreenvector.svg',
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.11,
                      ),
                    ),
                    Text(
                      'Akdeniz\n apartmanı',
                      style: kDescStyle.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ),
                    );
                  },
                  child: NameSreenButton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NameScreenNameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.07,
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: 'Adınız,  soyadınız',
              hintStyle: kDescStyle,
              border: InputBorder.none,
            ),
            onChanged: (value) {},
            keyboardType: TextInputType.name,
          ),
        ),
      ),
    );
  }
}

class NameSreenButton extends StatelessWidget {
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
            right: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.70,
              height: MediaQuery.of(context).size.height * 0.07,
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
                'Tamamla',
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
