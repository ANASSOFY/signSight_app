import 'package:flutter/material.dart';
import '../../core/widgets/bottom_nav.dart';


class TranslateScreen extends StatelessWidget {
const TranslateScreen({super.key});


@override
Widget build(BuildContext context) {
return const Scaffold(
body: Center(child: Text('Translation Screen')),
bottomNavigationBar: MainBottomNav(currentIndex: 1),
);
}
}