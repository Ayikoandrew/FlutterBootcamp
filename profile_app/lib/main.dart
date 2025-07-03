import 'package:flutter/material.dart';
import 'package:profile_app/screens/profile_screen.dart';
import 'package:profile_app/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      theme: AppTheme.lightTheme,
      home: ProfileScreen(),
    );
  }
}
