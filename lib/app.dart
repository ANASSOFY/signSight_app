import 'package:flutter/material.dart';
import 'package:sign/core/theme/app_theme.dart';
import 'features/home/home_screen.dart';


class SignSightApp extends StatelessWidget {
const SignSightApp ({super.key});


@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Sign Language App',
theme: AppTheme.lightTheme,
home: const HomeScreen(),
);
}
}