import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Sreens/LoginScreen/LoginPage.dart';
import 'package:device_preview/device_preview.dart';

//
void main() {
  runApp(const MyApp());

//! with DV

  // DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//! with DV
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,

      // debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 16, 71, 174)),
      home: LoginPage(),
    );
  }
}
