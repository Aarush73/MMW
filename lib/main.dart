import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import './screens/contact_us.dart';
import './screens/home_screen.dart';
import './screens/services.dart';
import './screens/about_us.dart';
import './screens/feedback.dart';
import './screens/quiz.dart';
import './screens/service_detail.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Make My Website',
      theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.red,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
              textTheme: ThemeData.light().textTheme.copyWith(
                    headline6: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                    ),
                    headline5: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  )),
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                headline5: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                headline4: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                headline3: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 35,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
      home: HomeScreen(),
      routes: {
        OurServices.routeName: (ctx) => OurServices(),
        AboutUs.routeName: (ctx) => AboutUs(),
        ContactUs.routeName: (ctx) => ContactUs(),
        FeedbackCus.routeName: (ctx) => FeedbackCus(),
        Quiz.routeName: (ctx) => Quiz(),
        ServiceDetail.routeName: (ctx) => ServiceDetail(),
      },
    );
  }
}
