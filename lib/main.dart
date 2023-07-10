import 'package:flutter/material.dart';
import 'package:labor/themedata.dart';

import 'features/splash/presentation/views/splashview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const Splashview(),
    );
  }
}
