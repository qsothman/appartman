import 'package:appartman/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SafeArea(
                child: FlatButton(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/images/logouticon.svg',
                    width: MediaQuery.of(context).size.width * 0.075,
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.04,
              top: MediaQuery.of(context).size.height * 0.025,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Merhaba,',
                      style: kDescStyle.copyWith(
                          color: Color(
                            0xffB2B7CF,
                          ),
                          fontSize: 24.0),
                    ),
                    Text(
                      'Ne istersin?',
                      textAlign: TextAlign.start,
                      style: kDescStyle.copyWith(
                          color: Color(0xff3E4B8A),
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0),
                    ),
                  ],
                ),
                FlatButton(
                  onPressed: () {},
                  child: CircleAvatar(
                    minRadius: 22.0,
                    maxRadius: 23.0,
                    backgroundColor: Color(0xff9EDAFF),
                    foregroundColor: Color(0xffC4C4C4),
                    child: Image.asset(
                      'assets/images/mainscreenavatar.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.36,
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: AlertDialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.zero,
                    contentPadding: EdgeInsets.zero,
                    content: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.36,
                          height: MediaQuery.of(context).size.height * 0.18,
                          child: Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/breadicon.svg',
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                  alignment: Alignment.center,
                                ),
                                Text(
                                  'Ekmek',
                                  style: kDescStyle.copyWith(
                                    color: Color(0xff262F56),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.36,
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: AlertDialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.zero,
                    contentPadding: EdgeInsets.zero,
                    content: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.36,
                          height: MediaQuery.of(context).size.height * 0.18,
                          child: Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/milkicon.svg',
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                  alignment: Alignment.center,
                                ),
                                Text(
                                  'Süt',
                                  style: kDescStyle.copyWith(
                                    color: Color(0xff262F56),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.36,
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: AlertDialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.zero,
                    contentPadding: EdgeInsets.zero,
                    content: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.36,
                          height: MediaQuery.of(context).size.height * 0.18,
                          child: Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/bottleicon.svg',
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                  alignment: Alignment.center,
                                ),
                                Text(
                                  'Su',
                                  style: kDescStyle.copyWith(
                                    color: Color(0xff262F56),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.36,
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: AlertDialog(
                    backgroundColor: Colors.transparent,
                    insetPadding: EdgeInsets.zero,
                    contentPadding: EdgeInsets.zero,
                    content: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.36,
                          height: MediaQuery.of(context).size.height * 0.18,
                          child: Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/othersicon.svg',
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                  alignment: Alignment.center,
                                ),
                                Text(
                                  'Diğer',
                                  style: kDescStyle.copyWith(
                                    color: Color(0xff262F56),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              right: MediaQuery.of(context).size.width * 0.55,
            ),
            child: Text(
              'Bildirimler',
              style: kDescStyle.copyWith(
                color: Color(0xff262F56),
              ),
            ),
          ),

          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   addAutomaticKeepAlives: false,
          //   padding: EdgeInsets.zero,
          //   children: [
          //
          //     NotificationBoxWidget(),
          //     NotificationBoxWidget(),
          //
          //   ],
          // ),
        ],
      ),
    );
  }
}

class NotificationBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.13,
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.13,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                          right: MediaQuery.of(context).size.width * 0.075),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffEECC3B),
                        radius: 5.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: SvgPicture.asset(
                        'assets/images/unionicon.svg',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kredinizi yüklendi',
                            style: kTitleStyle.copyWith(fontSize: 18.0),
                          ),
                          Text(
                            'Mevcut krediniz 120tl',
                            style: kDescStyle.copyWith(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.025),
                        child: Text(
                          '19 Ocak',
                          style: kDescStyle.copyWith(fontSize: 12.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.06),
                        child: SvgPicture.asset('assets/images/dateicon.svg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
