import 'package:brebeuf_hx/pages/home_page.dart';
import 'package:brebeuf_hx/pages/profile.dart';
import 'package:brebeuf_hx/pages/profile_display.dart';
import 'package:brebeuf_hx/pages/result_display.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile()
    );
  }
}
