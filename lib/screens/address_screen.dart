import 'package:appartman/consts.dart';
import 'package:appartman/screens/name_screen.dart';
import 'package:appartman/widgets/general_next_button.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              content: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                ),
                clipBehavior: Clip.hardEdge,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.85,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            clipBehavior: Clip.hardEdge,
                            child: Container(
                              width: 133.0,
                              height: 5.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.025,
                            left: MediaQuery.of(context).size.width * 0.08),
                        child: Text(
                          'İl',
                          style: kTitleStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      AddressTextField(
                        hintText: 'Ankara',
                        hintStyle: kDescStyle,
                        onChanged: (value) {},
                        width: 0.9,
                        height: 0.07,
                        keyboardType: TextInputType.name,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.08),
                        child: Text(
                          'İlçe',
                          style: kTitleStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      AddressTextField(
                        hintText: 'Çankaya',
                        hintStyle: kDescStyle,
                        onChanged: (value) {},
                        width: 0.9,
                        height: 0.07,
                        keyboardType: TextInputType.name,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.08),
                        child: Text(
                          'Mahalle',
                          style: kTitleStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      AddressTextField(
                        hintText: 'Yücetepe Mahallesi',
                        hintStyle: kDescStyle,
                        onChanged: (value) {},
                        width: 0.9,
                        height: 0.07,
                        keyboardType: TextInputType.name,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.08),
                        child: Text(
                          'Cadde / Sokak',
                          style: kTitleStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      AddressTextField(
                        hintText: 'Akdeniz cad',
                        hintStyle: kDescStyle,
                        onChanged: (value) {},
                        width: 0.9,
                        height: 0.07,
                        keyboardType: TextInputType.name,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Bina no',
                              style: kTitleStyle.copyWith(
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              'Daire no',
                              style: kTitleStyle.copyWith(
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AddressTextField(
                            hintText: '31',
                            hintStyle: kDescStyle,
                            onChanged: (value) {},
                            width: 0.4,
                            height: 0.07,
                            keyboardType: TextInputType.number,
                          ),
                          AddressTextField(
                            hintText: '5',
                            hintStyle: kDescStyle,
                            onChanged: (value) {},
                            width: 0.4,
                            height: 0.07,
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.02,
                            bottom: MediaQuery.of(context).size.height * 0.02,
                          ),
                          child: FlatButton(
                            child: GeneralNextButton(),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NameScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddressTextField extends StatelessWidget {
  String hintText;
  TextStyle hintStyle;
  Function onChanged;
  double width, height;
  TextInputType keyboardType;
  AddressTextField(
      {this.hintText,
      this.hintStyle,
      this.onChanged,
      this.height,
      this.width,
      this.keyboardType});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.01,
          left: MediaQuery.of(context).size.width * 0.05),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: MediaQuery.of(context).size.width * width,
          height: MediaQuery.of(context).size.height * height,
          color: Color.fromRGBO(249, 248, 248, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: hintStyle,
                border: InputBorder.none,
              ),
              onChanged: onChanged,
              keyboardType: keyboardType,
            ),
          ),
        ),
      ),
    );
  }
}
