import 'package:appartman/widgets/find_address_widget.dart';
import 'package:appartman/widgets/permission_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PermissionScreen extends StatefulWidget {
  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.05),
              child: FlatButton(
                child: FindAddressWidget(),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      backgroundColor: Colors.transparent,
                      insetPadding: EdgeInsets.zero,
                      content: PermissionCard(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
