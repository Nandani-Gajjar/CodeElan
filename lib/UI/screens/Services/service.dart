import 'package:flutter/material.dart';
import '../../../Utils/Responsive.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/widgets.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  double height = 0.0;
  double width = 0.0;
  double size = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    size = MediaQuery.of(context).size.longestSide;

    return Scafold_Dekstop_widget(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                ? TabsWidget()
                : SizedBox(),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'service-BG.png',
                  height: 250,
                  width: width,
                  fit: BoxFit.cover,
                  color: Color.fromRGBO(3, 28, 5, 1.0),
                  // opacity: const AlwaysStoppedAnimation(.1),
                  colorBlendMode: BlendMode.softLight,
                ),
                Text(
                  "Service",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            ourServices(),
            banners(),
            CompaniesSliderWidget()
          ],
        ),
      ),
    );
  }

  Widget ourServices() {
    return Container(
        // width: 100,
        alignment: Alignment.center,
        // color: Color.fromRGBO(235, 235, 235, 1),
        padding: EdgeInsets.all(20),
        child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                                width: 45,
                                child: Divider(
                                  thickness: 2.5,
                                  color: AppColor.primary,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Services",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ]),
                      Row(
                        children: [
                          SizedBox(
                            width: Responsive.isDesktop(context) ||
                                    Responsive.isk4Desktop(context)
                                ? width * .35
                                : width * .3,
                            child: Text(
                              "Accelerate Your Success with CodeElan Services",
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: Responsive.isDesktop(context) ||
                                        Responsive.isk4Desktop(context)
                                    ? 36
                                    : 26,
                                color: Color.fromRGBO(29, 27, 76, 1),
                                letterSpacing: .5,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            width: width * .01,
                          ),
                          SizedBox(
                            width: Responsive.isDesktop(context) ||
                                    Responsive.isk4Desktop(context)
                                ? width * .35
                                : width * .5,
                            child: Text(
                              "We are a multi-faceted technology solutions provider. We are well equipped to create custom digital solutions for businesses worldwide. Our core expertise in AGILE High-Velocity development gives us an edge to deliver only the best.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Arial',
                                  fontSize: 16,
                                  letterSpacing: .5,
                                  height: 1.8),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            width: 45,
                            child: Divider(
                              thickness: 2.5,
                              color: AppColor.primary,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Services",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ]),
                  SizedBox(
                    child: Text(
                      "Accelerate Your Success with CodeElan Services",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: Responsive.isDesktop(context) ||
                                Responsive.isk4Desktop(context)
                            ? 36
                            : 26,
                        color: Color.fromRGBO(29, 27, 76, 1),
                        letterSpacing: .5,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  SizedBox(
                    child: Text(
                      "We are a multi-faceted technology solutions provider. We are well equipped to create custom digital solutions for businesses worldwide. Our core expertise in AGILE High-Velocity development gives us an edge to deliver only the best.",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Arial',
                          fontSize: 16,
                          letterSpacing: .5,
                          height: 1.8),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ));
  }

  Widget banners() {
    return SizedBox(
      width: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? width * .6
          : width,
      child: Column(
        children: [
          Image.asset(
            'Services-home.png',
            height:
                Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    ? height * .8
                    : height * .4,
          ),
          Image.asset(
            'Service-home1.png',
            height: height * .6,
          ),
          SizedBox(
            height:
                Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    ? 100
                    : 0,
          ),
          Container(
            width:
                Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    ? width * .75
                    : width,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Why CodeElan Technology?",
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: Responsive.isDesktop(context) ||
                        Responsive.isk4Desktop(context)
                    ? 36
                    : 26,
                color: Color.fromRGBO(29, 27, 76, 1),
                letterSpacing: .5,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Image.asset(
            'Why-CodeElan-service.png',
            height:
                Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    ? height * .7
                    : height * .4,
          ),
          // Container(width: width * .75, child: CompaniesSliderWidget())
        ],
      ),
    );
  }
}
