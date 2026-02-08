import 'package:flutter/material.dart';

class Responsive {
  static int gridCount(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return 2;
    if (width < 900) return 3;
    return 4;
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static double textSize(BuildContext context, double mobileSize, double tabletSize, double desktopSize) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return mobileSize;
    if (width < 900) return tabletSize;
    return desktopSize;
  }

  static double buttonWidth(BuildContext context) {
    return isMobile(context) ? double.infinity : 160;
  }

  static EdgeInsets padding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return const EdgeInsets.all(12);
    if (width < 900) return const EdgeInsets.all(16);
    return const EdgeInsets.all(20);
  }
}
