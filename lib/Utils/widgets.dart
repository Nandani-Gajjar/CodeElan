import 'dart:developer';

import 'package:codeelan/UI/homePage.dart';
import 'package:codeelan/UI/screens/Services/adopt_cloud.dart';
import 'package:codeelan/UI/screens/aboutUs.dart';
import 'package:codeelan/UI/screens/contact-us.dart';
import 'package:flutter/material.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:hover_menu/hover_menu_controller.dart';

import '../UI/screens/Services/service.dart';
import '../main.dart';
import 'Responsive.dart';
import 'app_colors.dart';

class Scafold_Dekstop_widget extends StatefulWidget {
  final Widget body;

  Scafold_Dekstop_widget({Key? key, required this.body}) : super(key: key);

  @override
  State<Scafold_Dekstop_widget> createState() => _Scafold_Dekstop_widgetState();
}

class _Scafold_Dekstop_widgetState extends State<Scafold_Dekstop_widget> {
  double height = 0.0;

  double width = 0.0;

  double size = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    size = MediaQuery.of(context).size.longestSide;
    return SafeArea(
        child: Scaffold(
      appBar: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? PreferredSize(preferredSize: Size.fromHeight(0), child: SizedBox())
          : AppBar(
              backgroundColor: Colors.white,
              elevation: 3,
              surfaceTintColor: Colors.white,
              leading: InkWell(
                onTap: (() {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                }),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/cd-logo.jpg',
                    height: 50.0, alignment: Alignment.centerLeft,
                    // width: 100.0,
                  ),
                ),
              ),
              leadingWidth: 200,
              automaticallyImplyLeading: false,
            ),
      endDrawer: Drawer(
        child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? SizedBox()
            : Mobile_Header(),
      ),
      body: widget.body,
    ));
  }
}

class TabsWidget extends StatefulWidget {
  TabsWidget({Key? key}) : super(key: key);

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  double height = 0.0;

  double width = 0.0;

  double size = 0.0;
  bool isHover = false;
  String status = "";

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    size = MediaQuery.of(context).size.longestSide;

    return Column(
      children: [
        title(context),
        tabs(context),
      ],
    );
  }

  Widget title(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: const Color.fromRGBO(255, 255, 255, 1),
      padding: EdgeInsets.only(
        left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        right: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        top: MediaQuery.of(context).size.height * .02,
        // bottom: MediaQuery.of(context).size.width * .1s,
      ),
      child: Row(
        children: [
          //tital image
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/cd-logo.jpg',
                  height: 50.0, alignment: Alignment.centerLeft,
                  // width: 100.0,
                ),
              ),
            ),
          ),
          //tital email
          Expanded(
            flex:
                Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    ? 0
                    : 3,
            child: SizedBox(
              height: height * .1,
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.green,
                    size: 38,
                  ),
                  SizedBox(
                    width: width * .01,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black))),
                        child: Text('Mail us for help:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                letterSpacing: 1)),
                      ),
                      Container(
                        child: Text('info@codeelan.com',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade600,
                                letterSpacing: 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * .02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: width * .02,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black))),
                        child: Text('Pune, MH',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                letterSpacing: 1)),
                      ),
                      Text('India',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade600,
                              letterSpacing: 1)),
                    ],
                  ),
                  SizedBox(
                    width: width * .02,
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.green,
                    size: 32,
                  ),
                  SizedBox(
                    width: width * .01,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Requesting a call:',
                          style: TextStyle(
                              fontSize: size * .009, letterSpacing: 1)),
                      Text('(848) 4914 105',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 1)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  final serviceFocusNode = FocusNode();

  Widget tabs(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        right: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        top: 0,
      ),
      color: const Color.fromARGB(255, 3, 8, 61),
      height: height * .08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HoverMenuWidget(
                title: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ServicePage()));
                  },
                  style: ButtonStyle(
                    overlayColor: WidgetStateColor.resolveWith(
                        (states) => Colors.transparent),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.green;
                      }
                      return const Color.fromARGB(255, 3, 8, 61);
                    }),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: height * .08,
                    width: width * .08,
                    decoration: BoxDecoration(shape: BoxShape.rectangle),
                    child: Text('Services +',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ),
                ),
                items: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AdoptCloudUI()));
                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                            backgroundColor: WidgetStateColor.resolveWith(
                                (states) => Colors.white),
                            foregroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return AppColor.green;
                              }
                              return Colors.black;
                            }),
                          ),
                          child: Container(
                            width: 150,
                            height: 35,
                            alignment: Alignment.centerLeft,
                            child: Text('Adopt Cloud',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, letterSpacing: 1, height: 1)),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ServicePage()));
                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                            backgroundColor: WidgetStateColor.resolveWith(
                                (states) => Colors.white),
                            foregroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return AppColor.green;
                              }
                              return Colors.black;
                            }),
                          ),
                          child: Container(
                            width: 150,
                            height: 35,
                            alignment: Alignment.centerLeft,
                            child: Text('Built in Cloud',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, letterSpacing: 1, height: 1)),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ServicePage()));
                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                            backgroundColor: WidgetStateColor.resolveWith(
                                (states) => Colors.white),
                            foregroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return AppColor.green;
                              }
                              return Colors.black;
                            }),
                          ),
                          child: Container(
                            width: 150,
                            height: 35,
                            alignment: Alignment.centerLeft,
                            child: Text('Operate in Cloud',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, letterSpacing: 1, height: 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              HoverMenuWidget(
                title: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ServicePage()));
                  },
                  style: ButtonStyle(
                    overlayColor: WidgetStateColor.resolveWith(
                        (states) => Colors.transparent),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.green;
                      }
                      return const Color.fromARGB(255, 3, 8, 61);
                    }),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: height * .08,
                    width: width * .08,
                    decoration: BoxDecoration(shape: BoxShape.rectangle),
                    child: Text('Solutions +',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ),
                ),
                items: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ServicePage()));
                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                            backgroundColor: WidgetStateColor.resolveWith(
                                (states) => Colors.white),
                            foregroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return AppColor.green;
                              }
                              return Colors.black;
                            }),
                          ),
                          child: Container(
                            width: 150,
                            height: 35,
                            alignment: Alignment.centerLeft,
                            child: Text('IP Solutions',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, letterSpacing: 1, height: 1)),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ServicePage()));
                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                            backgroundColor: WidgetStateColor.resolveWith(
                                (states) => Colors.white),
                            foregroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return AppColor.green;
                              }
                              return Colors.black;
                            }),
                          ),
                          child: Container(
                            width: 150,
                            height: 35,
                            alignment: Alignment.centerLeft,
                            child: Text('Industry Solutions',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, letterSpacing: 1, height: 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              HoverMenuWidget(
                title: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ServicePage()));
                  },
                  style: ButtonStyle(
                    overlayColor: WidgetStateColor.resolveWith(
                        (states) => Colors.transparent),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                      if (states.contains(WidgetState.hovered)) {
                        return Colors.green;
                      }
                      return const Color.fromARGB(255, 3, 8, 61);
                    }),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: height * .08,
                    width: width * .08,
                    decoration: BoxDecoration(shape: BoxShape.rectangle),
                    child: Text('Insights +',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ),
                ),
                items: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ServicePage()));
                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                            backgroundColor: WidgetStateColor.resolveWith(
                                (states) => Colors.white),
                            foregroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return AppColor.green;
                              }
                              return Colors.black;
                            }),
                          ),
                          child: Container(
                            width: 150,
                            height: 35,
                            alignment: Alignment.centerLeft,
                            child: Text('Case Study',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, letterSpacing: 1, height: 1)),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ServicePage()));
                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                            backgroundColor: WidgetStateColor.resolveWith(
                                (states) => Colors.white),
                            foregroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return AppColor.green;
                              }
                              return Colors.black;
                            }),
                          ),
                          child: Container(
                            width: 150,
                            height: 35,
                            alignment: Alignment.centerLeft,
                            child: Text('Blog',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, letterSpacing: 1, height: 1)),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ServicePage()));
                          },
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            overlayColor: WidgetStateColor.resolveWith(
                                (states) => Colors.transparent),
                            backgroundColor: WidgetStateColor.resolveWith(
                                (states) => Colors.white),
                            foregroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                              if (states.contains(WidgetState.hovered)) {
                                return AppColor.green;
                              }
                              return Colors.black;
                            }),
                          ),
                          child: Container(
                            width: 150,
                            height: 35,
                            alignment: Alignment.centerLeft,
                            child: Text('Press Release',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, letterSpacing: 1, height: 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Aboutus()));
                },
                style: ButtonStyle(
                  overlayColor: WidgetStateColor.resolveWith(
                          (states) => Colors.transparent),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
                        if (states.contains(WidgetState.hovered)) {
                          return Colors.green;
                        }
                        return const Color.fromARGB(255, 3, 8, 61);
                      }),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: height * .08,
                  width: width * .08,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Text('About Us',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1)),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contactus()));
                },
                style: ButtonStyle(
                  overlayColor: WidgetStateColor.resolveWith(
                          (states) => Colors.transparent),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
                        if (states.contains(WidgetState.hovered)) {
                          return Colors.green;
                        }
                        return const Color.fromARGB(255, 3, 8, 61);
                      }),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: height * .08,
                  width: width * .08,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Text('Contact Us',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    return Colors.green.shade700;
                  }),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: height * .8,
                  // width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Icon(
                    Icons.arrow_outward_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    return AppColor.primary;
                  }),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: height * .8,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Text('Request a Demo',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Mobile_Header extends StatefulWidget {
  Mobile_Header({Key? key}) : super(key: key);

  @override
  State<Mobile_Header> createState() => _Mobile_HeaderState();
}

class _Mobile_HeaderState extends State<Mobile_Header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 600,
        color: Colors.white,
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: ListView(children: <Widget>[
            Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/cd-logo.jpg',
                              height: 40.0,
                              // width: 100.0,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 10,
                            child: IconButton(
                              icon: Icon(
                                Icons.cancel,
                              ),
                              onPressed: () =>
                                  Scaffold.of(context).openDrawer(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _expansionTiles(context, "Services", [
              _childExpansionTiles(
                  context,
                  "Adopt Cloud",
                  // height: 9,
                  [
                    Text('Adopt Cloud', style: TextStyle(fontSize: 18)),
                  ]),
              _childExpansionTiles(
                  context,
                  "Built in Cloud",
                  // height: 9,
                  [
                    Text('Adopt Cloud', style: TextStyle(fontSize: 18)),
                  ]),
              _childExpansionTiles(
                  context,
                  "Operate in Cloud",
                  // height: 9,
                  [
                    Text('Operate in Cloud', style: TextStyle(fontSize: 18)),
                  ]),
            ]),
          ]),
        ),
      ),
    );
  }

  Widget _expansionTiles(
    BuildContext context,
    String title,
    List<Widget> expamsionList,
  ) {
    ThemeData theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        primaryIconTheme: theme.iconTheme.copyWith(color: AppColor.primary),
        dividerColor: AppColor.lightBlue,
      ),
      child: ExpansionTile(
        expandedAlignment: Alignment.centerLeft,
        dense: true,
        childrenPadding: const EdgeInsets.only(left: 20, right: 10),
        tilePadding: const EdgeInsets.only(left: 2.0, right: 10),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        textColor: Colors.black,
        onExpansionChanged: (value) {},
        // iconColor: AppColor.primary,trailing: Icon(Icons.arrow_circle_right_outlined),
        title: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 0),
          child: Text(title,
              style: TextStyle(
                  fontSize: 18,
                  height: .2,
                  fontWeight: FontWeight.w800,
                  color: Colors.black)),
        ),
        children: expamsionList,
      ),
    );
  }

  Widget _childExpansionTiles(
    BuildContext context,
    String title,
    List<Widget> expamsionList,
  ) {
    ThemeData theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        primaryIconTheme: theme.iconTheme.copyWith(color: AppColor.primary),
        dividerColor: AppColor.lightBlue,
      ),
      child: ExpansionTile(
        expandedAlignment: Alignment.centerLeft,
        dense: true,
        childrenPadding: const EdgeInsets.only(left: 20, right: 10),
        tilePadding: const EdgeInsets.only(left: 2.0, right: 10),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        textColor: Colors.black,
        onExpansionChanged: (value) {},
        // iconColor: AppColor.primary,trailing: Icon(Icons.arrow_circle_right_outlined),
        title: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 0),
          child: Text(title,
              style: TextStyle(fontSize: 18, height: .2, color: Colors.black)),
        ),
        children: expamsionList,
      ),
    );
  }
}


