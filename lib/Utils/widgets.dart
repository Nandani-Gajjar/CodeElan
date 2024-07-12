import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:codeelan/UI/homePage.dart';
import 'package:codeelan/UI/screens/Services/AdoptCloudCategories/BuildCloudFoundation.dart';
import 'package:codeelan/UI/screens/Services/AdoptCloudCategories/CLoudMigration.dart';
import 'package:codeelan/UI/screens/Services/AdoptCloudCategories/KubernetAdoption.dart';
import 'package:codeelan/UI/screens/Services/adopt_cloud.dart';
import 'package:codeelan/UI/screens/aboutUs.dart';
import 'package:codeelan/UI/screens/contact-us.dart';
import 'package:flutter/material.dart';
import '../UI/screens/Services/BuildInCloud.dart';
import '../UI/screens/Services/service.dart';
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
                                fontSize: 16,
                                letterSpacing: 1)),
                      ),
                      Container(
                        child: Text('info@codeelan.com',
                            style: TextStyle(
                                fontSize: 14,
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
                                    builder: (context) => BuildCloudService()));
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
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                  tilePadding: EdgeInsets.only(
                      left: 20, right: 20, top: 0.001, bottom: 0.001),
                  // childrenPadding: EdgeInsets.only(left: 20,right: 20,top: 0.001,bottom: 0.001),
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServicePage()));
                      },
                      child: Text(
                        'Services',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  trailing: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.lightGrey)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                  children: <Widget>[
                    GestureDetector(
                      child: ExpansionTile(
                        title: Text('Adopt Cloud'),
                        trailing: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.lightGrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            )),
                        children: [
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Build Cloud Foundation")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BuildCloudFoundation()));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Cloud Migration")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CloudMigration()));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Kubernetes Adoption")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          KubernetAdoption()));
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdoptCloudUI()));
                      },
                    ),
                    GestureDetector(
                      child: ExpansionTile(
                        title: Text('Build in Cloud'),
                        trailing: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.lightGrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            )),
                        children: [
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Product Development")),
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             BuildCloudFoundation()));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("DevOps")),
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => CloudMigration()));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Testing Automation")),
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             KubernetAdoption()));
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BuildCloudService()));
                      },
                    ),
                  ]),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                  tilePadding: EdgeInsets.only(
                      left: 20, right: 20, top: 0.001, bottom: 0.001),
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServicePage()));
                      },
                      child: Text(
                        'Solution',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  trailing: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.lightGrey)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                  children: <Widget>[
                    GestureDetector(
                      child: ExpansionTile(
                        title: Text('Adopt Cloud'),
                        trailing: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.lightGrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            )),
                        children: [
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Build Cloud Foundation")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BuildCloudFoundation()));
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdoptCloudUI()));
                      },
                    ),
                  ]),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ServicePage()));
                      },
                      child: Text(
                        'Insights',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  trailing: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.lightGrey)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                  children: <Widget>[
                    GestureDetector(
                      child: ExpansionTile(
                        title: Text('Adopt Cloud'),
                        trailing: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.lightGrey)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            )),
                        children: [
                          GestureDetector(
                            child: Container(
                                width: 210,
                                padding: const EdgeInsets.all(5),
                                color: Colors.white,
                                alignment: Alignment.centerLeft,
                                child: Text("Build Cloud Foundation")),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BuildCloudFoundation()));
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdoptCloudUI()));
                      },
                    ),
                  ]),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Aboutus()));
                    },
                    child: Text(
                      'About Us',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                trailing: const SizedBox(),
              ),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contactus()));
                    },
                    child: Text(
                      'Contact Us',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                trailing: const SizedBox(),
              ),
            ),
            Divider(
              color: AppColor.lightGrey,
            ),


          ]),
        ),
      ),
    );
  }
}

class CompaniesSliderWidget extends StatefulWidget {
  const CompaniesSliderWidget({Key? key}) : super(key: key);

  @override
  State<CompaniesSliderWidget> createState() => _CompaniesSliderWidgetState();
}

class _CompaniesSliderWidgetState extends State<CompaniesSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: companiesSlider(context));
  }

  List<Widget> carouselItems = [
    Image.asset('assets/ACMEMinds-logo.png'),
    Image.asset('assets/Idea-bridge-Logo.png'),
    Image.asset('assets/LoadShare-Logo.png'),
    Image.asset('assets/ParentPayGroup.png'),
    Image.asset('assets/PlusInnovation-Logo.png'),
    Image.asset('assets/SunPower-Logo.png'),
    Image.asset('assets/Unique-Solutions.png'),
    Image.asset('assets/VoniGo-Logo.png'),
  ];
  int _current = 1;

  CarouselController controller = CarouselController();

  Widget companiesSlider(BuildContext context) {
    return CarouselSlider(
      carouselController: controller,
      items: carouselItems ?? List.empty(),
      options: CarouselOptions(
          height:
              Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ? 200.0
                  : 200,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction:
              Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ? 0.2
                  : 0.5,
          initialPage: 0,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
    );
  }
}

class HoverMenuWidget extends StatefulWidget {
  final Widget title;
  final double? width;
  final List<Widget> items;
  final HoverMenuController? controller;

  const HoverMenuWidget({
    Key? key,
    required this.title,
    this.items = const [],
    this.width,
    this.controller,
  }) : super(key: key);

  @override
  HoverMenuWidgetState createState() => HoverMenuWidgetState();
}

class HoverMenuWidgetState extends State<HoverMenuWidget> {
  OverlayEntry? _overlayEntry;
  final _focusNode = FocusNode();
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChanged);

    if (widget.controller != null) {
      widget.controller?.currentState = this;
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    if (_focusNode.hasFocus) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _overlayEntry?.remove();
      _removeOverlay();
    }
  }

  void _removeOverlay() {
    _isHovered = false;
  }

  void hideSubMenu() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      focusNode: _focusNode,
      onHover: (isHovered) {
        if (isHovered && !_isHovered) {
          _focusNode.requestFocus();
          _isHovered = true;
        }
      },
      onPressed: () {},
      child: widget.title,
    );
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      maintainState: true,
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height,
        width: widget.width ?? 200,
        child: TextButton(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              overlayColor:
                  WidgetStateColor.resolveWith((states) => Colors.transparent),
            ),
            onPressed: () {},
            onHover: (isHovered) {
              if (isHovered && _isHovered) {
                _focusNode.requestFocus();
              } else {
                _focusNode.unfocus();
              }
            },
            child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: widget.items)),
      ),
    );
  }
}

class HoverMenuController {
  HoverMenuWidgetState? currentState;

  void hideSubMenu() {
    currentState?.hideSubMenu();
  }
}

Widget ServicesGrid(Widget icon, String title, String subTitle) {
  return Container(
      color: Colors.black,
      width: 500,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          SizedBox(
            height: height * .01,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: height * .01,
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
            overflow: TextOverflow.clip,
            // maxLines: 4,
          )
        ],
      ));
}

Widget howWorkWidget(String title, String subTitle) {
  return ListTile(
    leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.lightGreen,
        ),
        padding: EdgeInsets.all(10),
        child: Icon(
          Icons.add,
          color: AppColor.primary,
        )),
    title: Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    subtitle: Text(subTitle,
        style: TextStyle(fontSize: 16, color: AppColor.subHeadingColor)),
  );
}
