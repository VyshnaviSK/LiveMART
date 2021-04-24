import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/dashboard-customer.dart';
import 'package:flutter_app/Screens/Login/login_screen.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/size_config.dart';
import 'package:flutter_otp/flutter_otp.dart';
import 'package:flutter_app/Screens/Front Page/components/body.dart';
import 'package:flutter_app/pages/dashboard-customer.dart';
import 'package:flutter_app/pages/dashboard-retailer.dart';
import 'package:flutter_app/pages/dashboard-wholesaler.dart';
import '../../../constants.dart';

FlutterOtp otp = FlutterOtp();
String result;
int enteredOtp;


class OtpForm extends StatefulWidget {
  const OtpForm({
    Key key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final User user = FirebaseAuth.instance.currentUser;
  String phoneNumber = '9648930609',otp_str;
  var d1,d2,d3,d4, genarated_otp;
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  int generateOtp([int min = 1000, int max = 9999]) {
    //Generates four digit OTP by default
    int _minOtpValue = min;
    int _maxOtpValue = max;
    return _minOtpValue + Random().nextInt(_maxOtpValue - _minOtpValue);
  }

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    bool yesorno;
    return Form(
      child: Column(
        children: [
          RoundedButton(
              text: "Send OTP",
              press: () {
                genarated_otp = generateOtp();
                otp.sendOtp(phoneNumber,'the otp is: ' + genarated_otp.toString(),1000,9999,'+91');
              }
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    d1 =value;
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    d2 =value;
                    nextField(value, pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    d3 =value;
                    nextField(value, pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    d4 =value;
                    if (value.length == 1) {
                      pin4FocusNode.unfocus();
                    }
                    otp_str = d1.toString() + d2.toString() +d3.toString() +d4.toString();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          RoundedButton(
            text: "Continue",
            press: () {
              //yesorno = genarated_otp == int.parse(otp_str);
              //if(yesorno){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CustomerHome(),
                    }, // Navigated to login for testing, actual navigation to dashboard
                  ),
                );
             // }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          GestureDetector(
            onTap: () {
              genarated_otp = generateOtp();
              otp.sendOtp(phoneNumber,'the otp for is: ' + genarated_otp.toString(),1000,9999,'+91'); // OTP code resend
            },
            child: Text(
              "Resend OTP Code",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}