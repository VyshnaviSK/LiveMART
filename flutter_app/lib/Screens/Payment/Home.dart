import 'dart:developer';
import 'package:flutter_app/Pages/dashboard-retailer.dart';
import 'package:flutter_app/Screens/Product_details/product_screen.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Screens/Front%20Page/components/background.dart';
import 'package:flutter_app/Screens/Payment/CalenderClient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CalendarClient calendarClient = CalendarClient();
  DateTime startTime = DateTime.now();
  DateTime endTime = DateTime.now().add(Duration(days: 1));
  TextEditingController _eventName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Text("OFFLINE PAYMENT -         Take To Go ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),

          Image.asset(
            "assets/images/gbad.jpg", height: 250
          ),
           Text("Please enter you estimated arrival date and time", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 15)),
          Text("                                                                                                       We would have your order ready for takeout with social distancing followed", style: TextStyle(fontSize: 15)),
          Row(

            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    DatePicker.showDateTimePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(2019, 3, 5),
                        maxTime: DateTime(2200, 6, 7), onChanged: (date) {
                      print('change $date');
                    }, onConfirm: (date) {
                      setState(() {
                        this.startTime = date;
                      });
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Text(
                    'Shop Arrival Window Start:',
                    style: TextStyle(color: Colors.blue),
                  )),
              Text('$startTime'),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    DatePicker.showDateTimePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(2019, 3, 5),
                        maxTime: DateTime(2200, 6, 7), onChanged: (date) {
                      print('change $date');
                    }, onConfirm: (date) {
                      setState(() {
                        this.endTime = date;
                      });
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Text(
                    'Shop Arrival Window End:',
                    style: TextStyle(color: Colors.blue),
                  )),
              Text('$endTime'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _eventName,
              decoration: InputDecoration(hintText: 'Your Name'),
            ),
          ),
          RaisedButton(
              child: Text(
                'Click to Submit and Set Remainder',
              ),
              color: Colors.orange,
              onPressed: () {
                //log('add event pressed');
                calendarClient.insert(
                  _eventName.text,
                  startTime,
                  endTime,
                );
              }),
          RoundedButton(
            text: "CLICK HERE TO RETURN TO DASHBOARD",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RetailerHome();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
