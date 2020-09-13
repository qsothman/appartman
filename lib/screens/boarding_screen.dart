import 'package:appartman/components/boarding-screen-data.dart';
import 'package:appartman/screens/phone_enter_screen.dart';
import 'package:appartman/widgets/boarding_screen_next_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appartman/consts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardingScreen extends StatefulWidget {
  @override
  _BoardingScreenState createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Row(
      children: <Widget>[
        Container(
          width: 45,
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(2),
              topRight: Radius.circular(2),
              bottomLeft: Radius.circular(2),
              bottomRight: Radius.circular(2),
            ),
            color: isCurrentPage
                ? Color.fromRGBO(121, 102, 254, 1)
                : Color(0XFFF1F1F1),
          ),
        ),
        SizedBox(width: 8),
      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            slideIndex = index;
          });
        },
        children: <Widget>[
          SlideTile(
            imagePath: mySLides[0].getImageAssetPath(),
            title: mySLides[0].getTitle(),
            desc: mySLides[0].getDesc(),
          ),
          SlideTile(
            imagePath: mySLides[1].getImageAssetPath(),
            title: mySLides[1].getTitle(),
            desc: mySLides[1].getDesc(),
          ),
          SlideTile(
            imagePath: mySLides[2].getImageAssetPath(),
            title: mySLides[2].getTitle(),
            desc: mySLides[2].getDesc(),
          )
        ],
      ),
      bottomSheet: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                for (int i = 0; i < 3; i++)
                  i == slideIndex
                      ? _buildPageIndicator(true)
                      : _buildPageIndicator(false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;
  SlideTile({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            imagePath,
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.085,
          ),
          Text(
            title,
            style: kTitleStyle,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.075,
              right: MediaQuery.of(context).size.width * 0.075,
            ),
            child: Text(
              desc,
              style: kDescStyle,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.085,
          ),
          FlatButton(
            child: BoardingScreenNextButton(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhoneEnterScreen(),
                ),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }
}
