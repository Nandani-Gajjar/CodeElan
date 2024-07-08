import 'package:carousel_slider/carousel_slider.dart';
import 'package:codeelan/UI/screens/contact-us.dart';
import 'package:codeelan/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../DataObjects/TestimonialListData.dart';
import '../../../Utils/Responsive.dart';
import '../../../Utils/widgets.dart';

class AdoptCloudUI extends StatefulWidget {
  const AdoptCloudUI({Key? key}) : super(key: key);

  @override
  State<AdoptCloudUI> createState() => _AdoptCloudUIState();
}

class _AdoptCloudUIState extends State<AdoptCloudUI> {
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
                : const SizedBox(),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'Adopt-Cloud-banner.png',
                  height: 300,
                  width: width,
                  fit: BoxFit.cover,
                  color: const Color.fromRGBO(3, 28, 5, 1.0),
                  // opacity: const AlwaysStoppedAnimation(.1),
                  colorBlendMode: BlendMode.softLight,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: width * .1,
                            child: Divider(
                              thickness: 1,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ADOPT CLOUD",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            width: width * .1,
                            child: Divider(
                              thickness: 1,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Text(
                      "Proven guidance and best practices that help you confidently adopt the cloud and achieve business outcomes.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ],
            ),
            AdoptCloud(),
            Image.asset(
              'CodeElan_Adopt_cloud_Process.gif',
              // height: height * .8,
            ),
            buildCloudWidget(),
            cloudMigrationWidget(),
            kubernetWidget(),
            SizedBox(
              height: height * .08,
            ),
            Center(
              child: Text(
                "Why Choose US",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            whyChoose(),
            testimonials(),
            testimonialSlider(),
            slider()
          ],
        ),
      ),
    );
  }

  Widget AdoptCloud() {
    return Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: Responsive.isDesktop(context) ||
                            Responsive.isk4Desktop(context)
                        ? width * .3
                        : width * .3,
                    child: Text(
                      "Architecting a Robust Cloud Foundation",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: Responsive.isDesktop(context) ||
                                Responsive.isk4Desktop(context)
                            ? 55
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
                        ? width * .3
                        : width * .5,
                    child: Text(
                      "Building a strong foundation in the cloud is essential for businesses seeking to leverage its numerous benefits. Our “Adopt Cloud” services are designed to guide you through this transformational journey with expertise and precision.",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Arial',
                          fontSize: 20,
                          letterSpacing: .5,
                          height: 1.8),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: height * .1,
                  ),
                  blueButton(
                    context,
                    "Contact Us",
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contactus()));
                    },
                  ),
                ],
              ),
              Image.asset(
                'adopt-cloud-bg-1.jpg',
                height: height * .8,
              ),
            ],
          )
        : Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Architecting a Robust Cloud Foundation",
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 24,
                    color: Color.fromRGBO(29, 27, 76, 1),
                    letterSpacing: .4,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: height * .01,
                ),
                SizedBox(
                  child: Text(
                    "Building a strong foundation in the cloud is essential for businesses seeking to leverage its numerous benefits. Our “Adopt Cloud” services are designed to guide you through this transformational journey with expertise and precision.",
                    style: TextStyle(
                        color: AppColor.subHeadingColor,
                        fontFamily: 'Arial',
                        fontSize: 18,
                        letterSpacing: .4,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: height * .1,
                ),
                blueButton(
                  context,
                  "Contact Us",
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Contactus()));
                  },
                ),
                Image.asset(
                  'adopt-cloud-bg-1.jpg',
                  height: height * .8,
                )
              ],
            ),
          );
  }

  Widget buildCloudWidget() {
    return Container(
      color: AppColor.lightGrey,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'Build_cloud_foundation.png',
                  height: height * .7,
                ),
                SizedBox(
                  width: width * .1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .3
                          : width * .3,
                      child: Text(
                        "Build Cloud Foundation",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 40
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
                          ? width * .3
                          : width * .5,
                      child: Text(
                        "We specialize in creating a strong cloud infrastructure tailored to your business. With expertise in cloud platforms, we design and implement reliable and scalable solutions. From networking to security, we cover all essential components for a robust cloud environment.",
                        style: TextStyle(
                            color: AppColor.subHeadingColor,
                            fontFamily: 'Arial',
                            fontSize: 18,
                            letterSpacing: .5,
                            height: 1.5),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    blueButton(
                      context,
                      "Learn More",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Contactus()));
                      },
                    ),
                  ],
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'Build_cloud_foundation.png',
                    // height: height * .7,
                  ),
                  SizedBox(
                    width: width * .1,
                  ),
                  Text(
                    "Build Cloud Foundation",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? 40
                          : 26,
                      color: Color.fromRGBO(29, 27, 76, 1),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: width * .01,
                  ),
                  Text(
                    "We specialize in creating a strong cloud infrastructure tailored to your business. With expertise in cloud platforms, we design and implement reliable and scalable solutions. From networking to security, we cover all essential components for a robust cloud environment.",
                    style: TextStyle(
                        color: AppColor.subHeadingColor,
                        fontFamily: 'Arial',
                        fontSize: 18,
                        letterSpacing: .5,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  blueButton(
                    context,
                    "Learn More",
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contactus()));
                    },
                  ),
                ],
              ),
            ),
    );
  }

  Widget cloudMigrationWidget() {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 30),
      child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .3
                          : width * .3,
                      child: Text(
                        "Cloud Migration",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 40
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
                          ? width * .3
                          : width * .5,
                      child: Text(
                        "We excel in deploying and migrating applications and data to the cloud. Our expertise allows for a seamless transition, ensuring minimal disruption and enabling you to leverage the benefits of cloud technology.",
                        style: TextStyle(
                            color: AppColor.subHeadingColor,
                            fontFamily: 'Arial',
                            fontSize: 18,
                            letterSpacing: .5,
                            height: 1.5),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: height * .1,
                    ),
                    blueButton(
                      context,
                      "Learn More",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Contactus()));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: width * .05,
                ),
                Image.asset(
                  'Cloud-migration.png',
                  height: height * .5,
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    'Cloud-migration.png',
                    height: height * .5,
                  ),
                  Text(
                    "Cloud Migration",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? 40
                          : 26,
                      color: Color.fromRGBO(29, 27, 76, 1),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "We excel in deploying and migrating applications and data to the cloud. Our expertise allows for a seamless transition, ensuring minimal disruption and enabling you to leverage the benefits of cloud technology.",
                    style: TextStyle(
                        color: AppColor.subHeadingColor,
                        fontFamily: 'Arial',
                        fontSize: 18,
                        letterSpacing: .5,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: height * .1,
                  ),
                  blueButton(
                    context,
                    "Learn More",
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contactus()));
                    },
                  ),
                ],
              ),
            ),
    );
  }

  Widget kubernetWidget() {
    return Container(
      color: AppColor.lightGrey,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'kubernet.png',
                ),
                SizedBox(
                  width: width * .1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .3
                          : width * .3,
                      child: Text(
                        "Kubernetes Adoption",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 40
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
                          ? width * .3
                          : width * .5,
                      child: Text(
                        "We simplify application deployment and management using Kubernetes, the leading container orchestration platform. Our custom container platforms optimize infrastructure for scalability, fault tolerance, and high availability, ensuring your microservices meet your business demands effectively.",
                        style: TextStyle(
                            color: AppColor.subHeadingColor,
                            fontFamily: 'Arial',
                            fontSize: 18,
                            letterSpacing: .5,
                            height: 1.5),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    blueButton(
                      context,
                      "Learn More",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Contactus()));
                      },
                    ),
                  ],
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'kubernet.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: height * .1,
                  ),
                  Text(
                    "Kubernetes Adoption",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 26,
                      color: Color.fromRGBO(29, 27, 76, 1),
                      letterSpacing: .5,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                  Text(
                    "We simplify application deployment and management using Kubernetes, the leading container orchestration platform. Our custom container platforms optimize infrastructure for scalability, fault tolerance, and high availability, ensuring your microservices meet your business demands effectively.",
                    style: TextStyle(
                        color: AppColor.subHeadingColor,
                        fontFamily: 'Arial',
                        fontSize: 18,
                        letterSpacing: .5,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  blueButton(
                    context,
                    "Learn More",
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contactus()));
                    },
                  ),
                ],
              ),
            ),
    );
  }

  Widget whyChoose() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                iconBox('icons-server.png', 'Comprehensive Services'),
                iconBox('user-setting.png', 'Engineering-Led Methodology'),
                iconBox(
                    'swiftTengibleResult.png', 'Swift And Tangible Results'),
                iconBox('process-icon.png', 'Value-Driven Operations'),
              ],
            )
          : Column(children: [
              iconBox('icons-server.png', 'Comprehensive Services'),
              SizedBox(
                height: height * .1,
              ),
              iconBox('user-setting.png', 'Engineering-Led Methodology'),
              SizedBox(
                height: height * .1,
              ),
              iconBox('swiftTengibleResult.png', 'Swift And Tangible Results'),
              SizedBox(
                height: height * .1,
              ),
              iconBox('process-icon.png', 'Value-Driven Operations'),
              SizedBox(
                height: height * .1,
              ),
            ]),
    );
  }

  Widget iconBox(String imageString, String label) {
    return Container(
      alignment: Alignment.center,
      // height: 150,
      width: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? 200
          : width,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              imageString,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: height * .015,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget testimonials() {
    return Container(
        width: 100,
        alignment: Alignment.center,
        color: Color.fromRGBO(235, 235, 235, 1),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Testimonials",
                        style: TextStyle(color: AppColor.green, fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          width: 40,
                          child: Divider(
                            thickness: 3,
                            color: AppColor.green,
                          )),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .28
                          : width * .3,
                      child: Text(
                        "We are very glad to get client review.",
                        style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: Responsive.isDesktop(context) ||
                                    Responsive.isk4Desktop(context)
                                ? 36
                                : 26,
                            color: Color.fromRGBO(29, 27, 76, 1),
                            letterSpacing: .5,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      width: width * .05,
                    ),
                    SizedBox(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .4
                          : width * .5,
                      child: Text(
                        "Let our success stories highlight why our clients trust us for all their software development queries, quality engineering initiatives and digital transformation implementation.",
                        style: TextStyle(
                          color: Color.fromRGBO(79, 79, 103, 1),
                          fontFamily: 'Arial',
                          fontSize: 16,
                          letterSpacing: .5,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  Widget testimonialSlider() {
    return Container(
      height: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? 440
          : 400,
      width: double.infinity,
      alignment: Alignment.center,
      color: Color.fromRGBO(235, 235, 235, 1),
      padding: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? EdgeInsets.only(left: 100, right: 100, top: 20, bottom: 20):EdgeInsets.all(20),
      child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: testimonialData.length,
          itemBuilder: (BuildContext context, int index) => Container(
                child: Stack(children: [
                  Positioned(
                    child: Container(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .3
                          : width * .6,
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? EdgeInsets.only(
                                  left: 50, right: 50, top: 20, bottom: 20)
                              : EdgeInsets.all(10),
                          child: Column(children: [
                            Card(
                              margin: EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    25), // Adjust the radius as needed
                              ),
                              child: Image.asset(
                                testimonialData[index].image,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              clipBehavior: Clip.antiAlias,
                              elevation: 5.0,
                            ),
                            SizedBox(
                              height: height * .03,
                            ),
                            Text(
                              testimonialData[index].description,
                              style: TextStyle(
                                color: Color.fromRGBO(79, 79, 103, 1),
                                fontFamily: 'Arial',
                                fontSize: Responsive.isDesktop(context) ||
                                        Responsive.isk4Desktop(context)
                                    ? 16
                                    : 10,
                                letterSpacing: .5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            Text(
                              testimonialData[index].name,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.bold,
                                fontSize: Responsive.isDesktop(context) ||
                                        Responsive.isk4Desktop(context)
                                    ? 20
                                    : 16,
                                letterSpacing: .5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: height * .001,
                            ),
                            Text(
                              testimonialData[index].designation,
                              style: TextStyle(
                                color: Color.fromRGBO(79, 79, 103, 1),
                                fontFamily: 'Arial',
                                fontSize: Responsive.isDesktop(context) ||
                                        Responsive.isk4Desktop(context)
                                    ? 16
                                    : 10,
                                letterSpacing: .5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    top: -10,
                    left: 50,
                    child: Image.asset(
                      "get-quote.png",
                      color: AppColor.grey,
                      height: 60,
                    ),
                  ),
                ]),
              )),
    );
    /*  return   Container(width: width, height: 500,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
                child: Center(child: Column(children: [PositionedDirectional(child: Image.asset("get-quote.png",height: 100,))],)),
              ),
            ),
          ),
        ],
      ),
    );*/
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
  int _current = 0;

  CarouselController controller = CarouselController();

  Widget slider() {
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

  Widget blueButton(BuildContext context, String text, Function() onTap) {
    return Container(
      width: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? width * .15
          : width*.4,
      // alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.only(left: 30, right: 30)),
          overlayColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.white;
            }
            return AppColor.buttonBlueColor;
          }),
          foregroundColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return AppColor.buttonBlueColor;
            }
            return Colors.white;
          }),
          backgroundColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.white;
            }
            return AppColor.buttonBlueColor;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: AppColor.buttonBlueColor)),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 40,
          child: Text(text,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  // color: AppColor.buttonBlueColor,
                  letterSpacing: 1)),
        ),
      ),
    );
  }
}
