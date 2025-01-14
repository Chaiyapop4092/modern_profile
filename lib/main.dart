import 'package:flutter/material.dart';

import 'constant/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Modern profile',
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
