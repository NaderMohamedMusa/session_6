// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:session_6/screens/splash/splashScreen.dart';
import 'package:session_6/utilities/theme.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    path: 'assets/lang',
    fallbackLocale: Locale("en","US"),
    supportedLocales: [
      const Locale("ar","EG"),
      const Locale("en","US"),
    ],
    startLocale: Locale("en","US"),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: themeData(),
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
    );
  }
}