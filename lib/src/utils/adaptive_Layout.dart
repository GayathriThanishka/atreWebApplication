import 'package:flutter/cupertino.dart';

class Adaptive {
  // Mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 767;
  // Tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 767 &&
      MediaQuery.of(context).size.width < 1366;
  // Desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1366;
}
