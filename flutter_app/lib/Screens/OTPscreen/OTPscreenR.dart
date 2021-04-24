import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/OTPscreen/components/bodyR.dart';
import 'package:flutter_app/size_config.dart';
import 'components/body.dart';

class OtpScreenR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
        backgroundColor: Colors.white,
      ),
      body: BodyR(),
    );
  }
}
