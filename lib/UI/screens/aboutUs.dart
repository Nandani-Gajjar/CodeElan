import 'package:flutter/material.dart';

import '../../DataObjects/ClientsData.dart';
import '../../DataObjects/LeadersListData.dart';
import '../../DataObjects/TestimonialListData.dart';
import '../../Utils/Responsive.dart';
import '../../Utils/app_colors.dart';
import '../../Utils/widgets.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
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
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                ? Header()
                : SizedBox(),
            image(),
            weAre(),
            leadershipSlider(),
            ourStory(),
            quotesClient(),
            SizedBox(
              height: height * .05,
            ),
            Image.asset('about-gap.png'),
            SizedBox(
              height: height * .05,
            ),
            clients()
          ],
        ),
      ),
    );
  }

  Widget image() {
    return Container(
      child: Image.asset(
        "aboutuscover.jpg",
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget weAre() {
    return Padding(
      padding: EdgeInsets.only(
        left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        right: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        top: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('We are Engineering- lead Technology Services company',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            'Established in 2016, CodeElan is a leading technology services company committed to delivering exceptional results for our clients. With our comprehensive “Adopt-Build-Operate” services, we support businesses at every stage of their journey.\n'
            '\nOur agile methodology ensures seamless integration and regular communication with our clients, making them a top priority.\n'
            '\nCustomer focus\n'
            'Engineering Led\n'
            'Continuous learning\n'
            'Agile and Nimble\n',
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  text: 'Call to ask ',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    color: Colors.black,
                    fontSize: size * .01,
                    height: height * .002,
                    letterSpacing: 1,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'any question | (848) 4914 105',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: AppColor.primary,
                          fontSize: size * .01,
                          height: height * .002,
                          letterSpacing: 1,
                        )),
                  ])),
          SizedBox(
            height: height * .05,
          ),
          Image.asset('about-gap.png'),
          SizedBox(
            height: height * .05,
          ),
          Image.asset('knowmore-aboutus.jpg'),
          SizedBox(
            height: height * .05,
          ),
          RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  text:
                      'Want to know more about us?' '\nJust download brochure…',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    color: Colors.black,
                    fontSize: size * .01,
                    letterSpacing: 1,
                    height: height * .002,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: '\n\nDownload Brochure\n\n,',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: AppColor.primary,
                          fontSize: size * .01,
                          height: height * .002,
                          letterSpacing: 1,
                        )),
                  ])),
          Text(
              'Comprehensive IT solutions to transform your business digitally!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            'CodeElan Technology, founded in 2016 is a leading IT software development company known for its innovative and robust digital solutions. We help you evolve your business into a profitable venture by using the unrivaled experience of our highly qualified product development team. Our huge pool of skilled professionals for Machine Learning, Cloud Computing, IoT, Artificial Intelligence, and more help you expand your web and mobile app development customer base.',
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          Text('Why CodeElan Technology?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  height: height * .002,
                  letterSpacing: 1)),
          Image.asset('Why-About-us-banner.png'),
          SizedBox(
            height: height * .05,
          ),
          Text('Our small team with big ideas',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            'Meet the CodeElan Technologies leadership team who envisioned building one of the finest custom software development, automation services and superior Quality engineering capabilities for global enterprises.',
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
        ],
      ),
    );
  }

  Widget leadershipSlider() {
    return ListView.builder(
        shrinkWrap: true,
        // physics: AlwaysScrollableScrollPhysics(),
        // scrollDirection: Axis.vertical,
        itemCount: leadershipData.length,
        itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                          color: AppColor.primary,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 25
                              : 21,
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
            ));
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

  Widget ourStory() {
    return Padding(
      padding: EdgeInsets.only(
        left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        right: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        top: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * .05,
          ),
          Text('The Story of CodeElan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "It really takes a lot to become a successful entrepreneur. This is how we started and growing year by year.",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .05,
          ),
          Text('MAY 2016',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  color: AppColor.primary,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "The night of the biggest enlightenment",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .03,
          ),
          Text('2017',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  color: AppColor.primary,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "Achieving new milestone in Device and Virtualization Testing",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .03,
          ),
          Text('2018',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  color: AppColor.primary,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "Creating Global Footprint",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .03,
          ),
          Text('2019',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  color: AppColor.primary,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "Getting Started with Performance Testing",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .03,
          ),
          Text('2020',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  color: AppColor.primary,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "Remote Performance Testing for International clients",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .03,
          ),
          Text('2021',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  color: AppColor.primary,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "Setting new benchmarks in Development Services and Product Development",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .03,
          ),
          Text('March 2022',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  color: AppColor.primary,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "New Milestones in Custom App, Product Development and Engineering Solutions",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .03,
          ),
          Text('June 2022',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  color: AppColor.primary,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "Grabbed biggest opportunity in Oracle Apache Tomcat Application Server",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .03,
          ),
          Text('Sep 2022',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size * .02,
                  color: AppColor.primary,
                  height: height * .002,
                  letterSpacing: 1)),
          Text(
            "Successful partnership for Recruitment globally",
            style: TextStyle(
                fontSize: size * .01, height: height * .002, letterSpacing: 1),
          ),
          SizedBox(
            height: height * .05,
          )
        ],
      ),
    );
  }

  Widget quotesClient() {
    return Container(
      // height: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
      //     ? 440
      //     : 350,
      width: 1000,
      alignment: Alignment.center,
      // color: Color.fromRGBO(235, 235, 235, 1),
      padding: EdgeInsets.all(20),
      child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: testimonialData.length,
          itemBuilder: (BuildContext context, int index) => Container(
                child: Stack(alignment: Alignment.center, children: [
                  Positioned(
                    child: Container(
                      width: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? width * .6
                          : width * .6,
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        elevation: 3,
                        surfaceTintColor: Colors.blueAccent,
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
                    left: 380,
                    child: Image.asset(
                      alignment: Alignment.center,
                      "get-quote.png",
                      color: Colors.black,
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

  Widget clients() {
    return Container(
      height: height * .5,
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        right: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? width * .1
            : width * .02,
        top: 0,
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 3 / 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (_, index) => Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(clientList[index].image),
            )),
        itemCount: clientList.length,
      ),
    );
  }
}
