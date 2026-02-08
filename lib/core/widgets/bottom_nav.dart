import 'package:flutter/material.dart';
import '../../features/home/home_screen.dart';
import '../../features/translate/translate_screen.dart';
import '../../features/history/history_screen.dart';
import '../theme/app_colors.dart';


class MainBottomNav extends StatelessWidget {
final int currentIndex;
const MainBottomNav({super.key, required this.currentIndex});


void _navigate(BuildContext context, int index) {
if (index == currentIndex) return;


final screens = [
const HomeScreen(),
const TranslateScreen(),
const HistoryScreen(),
];


Navigator.pushReplacement(
context,
MaterialPageRoute(builder: (_) => screens[index]),
);
}


@override
Widget build(BuildContext context) {
return BottomNavigationBar(
currentIndex: currentIndex,
selectedItemColor: AppColors.primary,
unselectedItemColor: Colors.grey,
onTap: (index) => _navigate(context, index),
items: const [
BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Translate'),
BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
],
);
}
}