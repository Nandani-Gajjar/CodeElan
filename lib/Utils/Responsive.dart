import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget k4Desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.k4Desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;
  //  MediaQuery.of(context).size.width <= 1200;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200 &&
      MediaQuery.of(context).size.width < 2600;

  static bool isk4Desktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 2600;
  //     &&
  // MediaQuery.of(context).size.width < 5000;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        // If width it less then 2600 and more then1100 we consider it as 4k Desktop
        if (constraints.maxWidth >= 2600) {
          return k4Desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet

        else if (constraints.maxWidth >= 1100) {
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 650) {
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}
