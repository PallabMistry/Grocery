import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/home_1.dart';
import 'package:grocery/populardeals.dart';
import 'package:grocery/profile.dart';
import 'package:grocery/registration.dart';

import 'Splashscreen.dart';
import 'dark.dart';
import 'home.dart';
import 'onbording.dart';
import 'otp.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        initialRoute: "/",
        routes: {
          "/profile":(context)=>profile(),
          "/editprofile":(context)=>editprofile(),
          "/profile":(context)=>home(),
          "/populardeals":(context)=>populardeals(),
          "/splashscreen":(context)=>splashscreen(),
          "/registration":(context)=>registration(),
          "/otp ":(context)=>otp (),

        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home:home(),
      ),
    );
  }
}
