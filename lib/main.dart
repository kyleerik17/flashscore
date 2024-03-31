import 'package:flashscore/features/pages/home/pages/ALL/pages/all.dart';
import 'package:flashscore/features/pages/home/pages/Direct/pages/direct_page.dart';
import 'package:flashscore/features/pages/home/pages/Splashscreen/pages/splashscreen_page.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(
            textTheme: const TextTheme(
              bodyText2: TextStyle(
                  fontFamily: 'AftaSansThin-RegularMerriweather-BoldItalic.ttf',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          home: const SplashscreenPage(),
        );
      },
    );
  }
}
