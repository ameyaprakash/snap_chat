import 'package:flutter/material.dart';
import 'package:snap_chat/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:snap_chat/view/chat_screen/chat_screen.dart';

import 'package:snap_chat/view/splash_page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavScreen(),
    );
  }
}

