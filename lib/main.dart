import 'package:flutter/material.dart';
import 'package:gyroloop/pages/home.dart';
import 'package:gyroloop/pages/login.dart';
import 'package:gyroloop/pages/signup.dart';
import 'package:gyroloop/pages/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'package:gyroloop/user_auth/user_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCmIj42x-vJ_IpLi3i50M3-ECT_APxlfHw",
          appId: "1:599548577431:web:7661a58cf62478fd364bd2",
          messagingSenderId: "599548577431",
          projectId: "gyroloop-fd0bc"));
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreenPage(),
          '/login': (context) => LoginPage(),
          '/signup': (context) => SignUpPage(),
          '/home': (context) => HomePage()
        });
  }
}
