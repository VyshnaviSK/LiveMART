import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Front%20Page/front_page.dart';
import 'package:flutter_app/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/utils/authentication.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error initializing Firebase');
        } else if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Auth',
            theme: ThemeData(
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: Colors.white,
            ),
            home: FrontScreen(),
          );
        }
        return CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            Colors.orange,
          ),
        );
      },
    );
  }
}