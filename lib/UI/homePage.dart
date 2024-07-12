import 'package:codeelan/DataObjects/LeadersListData.dart';
import 'package:codeelan/Utils/widgets.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import '../DataObjects/TestimonialListData.dart';
import '../Utils/Responsive.dart';
import '../Utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double height = 0.0;

class _HomePageState extends State<HomePage> {
  double height = 0.0;
  double width = 0.0;
  double size = 0.0;
  
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    size = MediaQuery.of(context).size.longestSide;

    return Scafold_Dekstop_widget(
    //   backgroundColor: Color.fromARGB(255, 255, 255, 255),
    //   appBar:   Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
    //     ? PreferredSize(
    //     preferredSize: Size.fromHeight(0),  child: SizedBox()):AppBar(
    //   backgroundColor: Colors.white,
    //   elevation: 3,
    //   surfaceTintColor: Colors.white,
    //   leading: InkWell(
    //     onTap: (() {
    //       Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => HomePage(),
    //         ),
    //       );
    //     }),
    //     child: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Image.asset(
    //         'assets/cd-logo.jpg',
    //         height: 50.0, alignment: Alignment.centerLeft,
    //         // width: 100.0,
    //       ),
    //     ),
    //   ),
    //
    //   leadingWidth: 200,
    //   automaticallyImplyLeading: false,
    // ),
    // endDrawer: Drawer(
    //   child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
    //       ? SizedBox(): Mobile_Header(),
    // ),
      body: Container(
        // color: Colors.white,
        child: ListView(
          children: [
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)? TabsWidget():SizedBox(),
    //         Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
    // ?            Scafold_Dekstop_widget()
    //             : SizedBox(),
            getStarted(),
            services(),
            CompaniesSliderWidget(),
            testimonials(),
            testimonialSlider(),
            aboutUs(),
            leadership(), leadershipSlider(),
            contactus(),
            contactForm(),
            helpdesk(),
            blog(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      color: const Color.fromRGBO(255, 255, 255, 1),
      padding: EdgeInsets.only(
        left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        right: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        top: MediaQuery.of(context).size.height * .01,
        // bottom: MediaQuery.of(context).size.width * .1s,
      ),
      child: Row(
        children: [
          //tital image
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/cd-logo.jpg',
                height: 50.0, alignment: Alignment.centerLeft,
                // width: 100.0,
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
                                fontSize: size * .013,
                                letterSpacing: 1)),
                      ),
                      Container(
                        child: Text('info@codeelan.com',
                            style: TextStyle(
                                fontSize: size * .01,
                                color: Colors.grey.shade600,
                                letterSpacing: 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * .02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 30),
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
                                fontSize: size * .013,
                                letterSpacing: 1)),
                      ),
                      Text('India',
                          style: TextStyle(
                              fontSize: size * .01,
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
                    size: 35,
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
                              fontSize: size * .012,
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

  Widget tab() {
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
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
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
                  width: width * .1,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Text('Services +',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1)),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
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
                  width: width * .1,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Text('Solutions +',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1)),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
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
                  width: width * .1,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Text('Insights +',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1)),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
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
                  width: width * .1,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Text('About Us',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1)),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
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
                  width: width * .1,
                  decoration: BoxDecoration(shape: BoxShape.rectangle),
                  child: Text('Contact Us',
                      style: TextStyle(
                          fontSize: 18,
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

  Widget getStarted() {
    return Container(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Image.asset(
            'cd-home.jpg',
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'You Think ',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontSize: size * .04,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'IT\n',
                            style: TextStyle(
                                fontFamily: 'Arial',
                                color: AppColor.primary,
                                fontSize: size * .04,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "We Deliver ",
                            style: TextStyle(
                                fontFamily: 'Arial',
                                color: Colors.black,
                                fontSize: size * .04,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'IT',
                            style: TextStyle(
                                fontFamily: 'Arial',
                                color: AppColor.primary,
                                fontSize: size * .04,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold)),
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "We give you the platform to convert your\nideas into technology excatly the way you\nwant.",
                    style: TextStyle(
                      color: Color.fromRGBO(79, 79, 103, 1),
                      fontFamily: 'Arial',
                      fontSize: 22,
                      letterSpacing: .5,
                    )),
                SizedBox(
                  height: 20,
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
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Text('Get Started',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget services() {
    return Container(
        width: 100,
        alignment: Alignment.center,
        color: Color.fromRGBO(235, 235, 235, 1),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              SizedBox(
                  width: 40,
                  child: Divider(
                    thickness: 3,
                    color: AppColor.green,
                  )),
              SizedBox(
                width: 10,
              ),
              Text(
                "Services",
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
            Text("How CodeElan can help",
                style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 36,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text(
              "CodeElan is a product engineering services company focused on high quality AGILE software product development starting from\nsoftware blueprinting and wireframing to deployments at scale. We partner with global enterprises, helping them to apply\ninnovation in every facet of business.",
              style: TextStyle(
                color: Color.fromRGBO(79, 79, 103, 1),
                fontFamily: 'Arial',
                fontSize: 16,
                letterSpacing: .5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
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
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width:Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                          ? width * .28:width *.3,
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
                    ),SizedBox(width: width*.05,),
                    SizedBox(
                      width:Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                          ? width * .28:width *.5,                      child: Text(
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
      padding: EdgeInsets.all(20),
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

  Widget aboutUs() {
    return Container(
      color: Colors.white,

      // padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        'assets/aboutuss.png',
        alignment: Alignment.center,
        height: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? height*.6:   height * .3,
      ),
    );
  }

  Widget leadership() {
    return Container(
        width: 100,
        alignment: Alignment.center,
        // color: Color.fromRGBO(235, 235, 235, 1),
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
                        "Leadership team",
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
                  children: [
                    SizedBox(
                      width:Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                          ? width * .28:width *.3,                         child: Text(
                        "Our small team with big ideas",
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
                    ),SizedBox(width: width*.05,),
                    SizedBox(
                      width:Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                          ? width * .28:width *.5,                         child: Text(
                        "Meet the CodeElan Technologies leadership team who envisioned building one of the finest custom software development, automation services and superior Quality engineering capabilities for global enterprises.",
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

  Widget leadershipSlider() {
    return Container(
      height: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? 440
          : 400,
      width: double.infinity,
      alignment: Alignment.center,
      color: Color.fromRGBO(235, 235, 235, 1),
      padding: EdgeInsets.all(20),
      child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: leadershipData.length,
          itemBuilder: (BuildContext context, int index) => Container(
                child: Container(
                  width: Responsive.isDesktop(context) ||
                          Responsive.isk4Desktop(context)
                      ? width * .2
                      : width * .8,
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    color: Colors.white,
                    child: Column(children: [
                      Container(
                        height: height * .01,
                        decoration: BoxDecoration(
                          color: AppColor.primary,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                          ),
                        ),
                      ),SizedBox(height: height*.03,),
                      Card(
                        margin: EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              120), // Adjust the radius as needed
                        ),
                        child: Image.asset(
                          leadershipData[index].image,
                          width: 180,
                          fit: BoxFit.cover,
                        ),
                        clipBehavior: Clip.antiAlias,
                        elevation: 5.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      Text(
                        leadershipData[index].name,
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
                        leadershipData[index].designation,
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

  Widget contactus() {
    return Container(
        width: 100,
        alignment: Alignment.center,
        color: Color.fromRGBO(235, 235, 235, 1),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              SizedBox(
                  width: 40,
                  child: Divider(
                    thickness: 3,
                    color: AppColor.green,
                  )),
              SizedBox(
                width: 10,
              ),
              Text(
                "Contact us",
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
            Text("Let’s start discussing your new idea",
                style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 36,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                ? Text(
                    "As a Software Development and QA expert, We help organizations adjust to the\nexpanding significance of current market.",
                    style: TextStyle(
                      color: Color.fromRGBO(79, 79, 103, 1),
                      fontFamily: 'Arial',
                      fontSize: 16,
                      letterSpacing: .5,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  )
                : Text(
                    "As a Software Development and QA expert, We help organizations adjust to the\nexpanding significance of current market.",
                    style: TextStyle(
                      color: Color.fromRGBO(79, 79, 103, 1),
                      fontFamily: 'Arial',
                      fontSize: 16,
                      letterSpacing: .5,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget contactForm() {
    return Form(
      child: Container(
        padding: EdgeInsets.only(
          left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
              ? width * .1
              : width * .05,
          right:
              Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ? width * .1
                  : width * .05,
          top: MediaQuery.of(context).size.height * .05,
          // bottom: MediaQuery.of(context).size.width * .1s,
        ),
        width: 100,
        child: Column(
          key: _formKey,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: Responsive.isDesktop(context) ||
                      Responsive.isk4Desktop(context)
                  ? width * .3
                  : width,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  hintText: 'Name',
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              width: Responsive.isDesktop(context) ||
                      Responsive.isk4Desktop(context)
                  ? width * .3
                  : width,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  hintText: 'Phone',
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              width: Responsive.isDesktop(context) ||
                      Responsive.isk4Desktop(context)
                  ? width * .3
                  : width,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  hintText: 'Choose Service',
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              width: Responsive.isDesktop(context) ||
                      Responsive.isk4Desktop(context)
                  ? width * .3
                  : width,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  hintText: 'Message',
                  filled: true,
                ),
                maxLines: 5,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a Snackbar.
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                  return Colors.green;
                }),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Text('Get a Quote',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 1)),
              ),
            ),
            SizedBox(
              height: height * .02,
            )
          ],
        ),
      ),
    );
  }

  Widget helpdesk() {
    return Container(
        padding: EdgeInsets.only(
          left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
              ? width * .1
              : width * .05,
          right:
              Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ? width * .1
                  : width * .05,
          top: MediaQuery.of(context).size.height * .05,
          bottom: MediaQuery.of(context).size.width * .1,
        ),
        width: 100,
        alignment: Alignment.center,
        // color: Color.fromRGBO(235, 235, 235, 1),
        child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("phone-image.png"),
            SizedBox(
              width: width * .02,
            ),
            SizedBox(
              width: width * .28,
              child: Text(
                "Leverage and amplify your product value by cooperating with CodeElan Technologies. Collaborate with our innovative custom software development company!",
                style: TextStyle(
                  color: Color.fromRGBO(79, 79, 103, 1),
                  fontFamily: 'Arial',
                  fontSize: Responsive.isDesktop(context) ||
                          Responsive.isk4Desktop(context)
                      ? 16
                      : 10,
                  letterSpacing: .5,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: width * .02,
            ),
            DottedDashedLine(
              height: 40,
              width: 0,
              axis: Axis.vertical,
              dashHeight: 8,
              dashColor: Colors.orange,
            ),
            SizedBox(
              width: width * .02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Help Desk 24h/7",
                  style: TextStyle(
                    color: AppColor.green,
                    fontFamily: 'Arial',
                    fontSize: 16,
                    letterSpacing: .5,
                  ),
                ),
                Text(
                  "8484914105",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    fontSize: Responsive.isDesktop(context) ||
                            Responsive.isk4Desktop(context)
                        ? 30
                        : 25,
                    letterSpacing: .5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .2,
            )
          ],
        ):Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset("phone-image.png"),  SizedBox(
                  width: width * .02,
                ),
                SizedBox(
                  width: width * .5,
                  child: Text(
                    "Leverage and amplify your product value by cooperating with CodeElan Technologies. Collaborate with our innovative custom software development company!",
                    style: TextStyle(
                      color: Color.fromRGBO(79, 79, 103, 1),
                      fontFamily: 'Arial',
                      fontSize: Responsive.isDesktop(context) ||
                          Responsive.isk4Desktop(context)
                          ? 16
                          : 10,
                      letterSpacing: .5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: height * .05,
            ),
            DottedDashedLine(
              height: 20,
              width: 200,
              axis: Axis.horizontal,
              dashHeight: 8,
              dashColor: Colors.orange,
            ),
            SizedBox(
              width: width * .02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Help Desk 24h/7",
                  style: TextStyle(
                    color: AppColor.green,
                    fontFamily: 'Arial',
                    fontSize: 16,
                    letterSpacing: .5,
                  ),
                ),
                Text(
                  "8484914105",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    fontSize: Responsive.isDesktop(context) ||
                        Responsive.isk4Desktop(context)
                        ? 30
                        : 25,
                    letterSpacing: .5,
                  ),
                ),
              ],
            ),

          ],
        ));
  }

  Widget blog() {
    return Container(
        // width: 100,
        alignment: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? Alignment.center:Alignment.centerLeft,
        color: Color.fromRGBO(235, 235, 235, 1),
        padding: EdgeInsets.all(5),
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
                        "Blog",
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
                  children: [
                    SizedBox(
                      width: width * .3,
                      child: Text(
                        "Insights From Experts.",
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
                        maxLines: 4,
                      ),
                    ),
                    SizedBox(
                      width: width * .02,
                    ),
                    SizedBox(
                      width:Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                          ? width * .28:width *.5,                           child: Text(
                        "The must read collection of blogs on software development and testing featuring articles on API testing tools, test automation, achieving excellence in software engineering and more.",
                        style: TextStyle(
                          color: Color.fromRGBO(79, 79, 103, 1),
                          fontFamily: 'Arial',
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 16
                              : 10,
                          letterSpacing: .5,
                        ),
                        // maxLines: 3,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  Widget footerABoutUs(){
    return Container();
  }
}
