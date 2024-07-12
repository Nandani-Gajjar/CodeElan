import 'package:flutter/material.dart';
import '../../Utils/Responsive.dart';
import '../../Utils/app_colors.dart';
import '../../Utils/widgets.dart';

class Contactus extends StatefulWidget {
  const Contactus({Key? key}) : super(key: key);

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
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
        color: AppColor.lightBlue,
        child: ListView(
          children: [
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                ? TabsWidget()
                : SizedBox(),

            /*Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    focusNode: serviceButtonFocusNode,
                    onHover: (val) {
                      if (val) {
                        serviceButtonFocusNode.requestFocus();
                        showOverlay = true;
                      }
                    },
                    onPressed: () {},
                    child: const Text('Hover'),
                  ),
                  TextButton(
                    focusNode: textButtonFocusNode1,
                    onHover: (val) {
                      if (val) {
                        textButtonFocusNode1.requestFocus();
                        showOverlay = true;
                      }
                    },
                    onPressed: () {},
                    child: const Text('Hover'),
                  ),
                ],
              ),
            ),
            */
            // Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            //     ? Scafold_Dekstop_widget()
            //     : const SizedBox(),
            // Text(
            //   'Contact us ',
            //   style: TextStyle(
            //       fontFamily: 'Arial',
            //       color: Colors.green,
            //       fontSize: size * .03,
            //       letterSpacing: 1,
            //       fontWeight: FontWeight.bold),
            //   textAlign: TextAlign.center,
            // ),

            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'contactus-cover.jpg',
                  height: 250,
                  width: width,
                  fit: BoxFit.cover,
                  color: Colors.black,
                  opacity: const AlwaysStoppedAnimation(.5),
                  colorBlendMode: BlendMode.softLight,
                ),
                Text(
                  "Contact CodeElan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            form(),
            CompaniesSliderWidget()
          ],
        ),
      ),
    );
  }

  Widget form() {
    return Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
        ? Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: width * .1,
                        right: width * .1,
                        top: MediaQuery.of(context).size.height * .1,
                        bottom: MediaQuery.of(context).size.width * .05,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                    width: 40,
                                    child: Divider(
                                      thickness: 3,
                                      color: AppColor.primary,
                                    )),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Contact us",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ]),
                          RichText(
                              text: TextSpan(
                                  text: 'Connect with ',
                                  style: TextStyle(
                                      fontFamily: 'Arial',
                                      color: Colors.black,
                                      fontSize: size * .03,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                TextSpan(
                                    text: 'us!',
                                    style: TextStyle(
                                        fontFamily: 'Ari  al',
                                        color: AppColor.primary,
                                        fontSize: size * .03,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold)),
                              ])),
                          SizedBox(
                            height: height * .05,
                          ),
                          Row(
                            children: [
                              Card(
                                  margin: EdgeInsets.all(5),
                                  color: AppColor.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        120), // Adjust the radius as needed
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Icon(
                                      Icons.maps_home_work_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )),
                              SizedBox(
                                width: width * .02,
                              ),
                              Container(
                                width: width * .15,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'India office:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w600,
                                          height: 2),
                                    ),
                                    Text(
                                      'E402, S3 Lifestyle Internal Rd, Apartments, Pimple Saudagar, Pune, Maharashtra 411027',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: width * .01,
                                          height: 1.6),
                                      maxLines: 5,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * .05,
                          ),
                          Row(
                            children: [
                              Card(
                                  margin: EdgeInsets.all(5),
                                  color: AppColor.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        120), // Adjust the radius as needed
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )),
                              SizedBox(
                                width: width * .02,
                              ),
                              Container(
                                width: width * .16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'USA office:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '1151 Topaz Ave, San Jose, CA 95117',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: width * .01,
                                          height: 1.6),
                                      maxLines: 5,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * .05,
                          ),
                          Row(
                            children: [
                              Card(
                                  margin: EdgeInsets.all(5),
                                  color: AppColor.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        120), // Adjust the radius as needed
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Icon(
                                      Icons.email,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )),
                              SizedBox(
                                width: width * .02,
                              ),
                              Container(
                                width: width * .2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mail for information:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'info@codeelan.com\nsales@codeelan.com',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: width * .01,
                                          height: 1.6),
                                      maxLines: 5,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * .05,
                          ),
                          Row(
                            children: [
                              Card(
                                  margin: EdgeInsets.all(5),
                                  color: AppColor.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        120), // Adjust the radius as needed
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Icon(
                                      Icons.wifi_calling_3_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )),
                              SizedBox(
                                width: width * .02,
                              ),
                              Container(
                                width: width * .2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Call us:',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '(820) 865-0598',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: width * .01,
                                          height: 1.6),
                                      maxLines: 5,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: contactForm())
                ],
              ),
            ],
          )
        : Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: height * .2,
                    ),
                    SizedBox(
                        width: 50,
                        child: Divider(
                          thickness: 3,
                          color: AppColor.primary,
                        )),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Contact us",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ]),
              RichText(
                  text: TextSpan(
                      text: 'Connect with ',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontSize: 30,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'us!',
                        style: TextStyle(
                            fontFamily: 'Ari  al',
                            color: AppColor.primary,
                            fontSize: 30,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold)),
                  ])),
              contactForm(),
              Padding(
                padding: EdgeInsets.only(
                  left: width * .05,
                  right: width * .05,
                  top: MediaQuery.of(context).size.height * .1,
                  bottom: MediaQuery.of(context).size.width * .05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Card(
                            margin: EdgeInsets.all(5),
                            color: AppColor.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  120), // Adjust the radius as needed
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                Icons.maps_home_work_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            )),
                        SizedBox(
                          width: width * .02,
                        ),
                        Container(
                          // width: 15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'India office:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    height: 2),
                              ),
                              SizedBox(
                                width: width * .5,
                                child: Text(
                                  'E402, S3 Lifestyle Internal Rd, Apartments, Pimple Saudagar, Pune, Maharashtra 411027',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      height: 1.6),
                                  maxLines: 5,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Row(
                      children: [
                        Card(
                            margin: EdgeInsets.all(5),
                            color: AppColor.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  120), // Adjust the radius as needed
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 30,
                              ),
                            )),
                        SizedBox(
                          width: width * .02,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'USA office:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: width * .5,
                                child: Text(
                                  '1151 Topaz Ave, San Jose, CA 95117',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      height: 1.6),
                                  maxLines: 5,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Row(
                      children: [
                        Card(
                            margin: EdgeInsets.all(5),
                            color: AppColor.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  120), // Adjust the radius as needed
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                Icons.email,
                                color: Colors.white,
                                size: 30,
                              ),
                            )),
                        SizedBox(
                          width: width * .02,
                        ),
                        Container(
                          width: width * .5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mail for information:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'info@codeelan.com\nsales@codeelan.com',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    height: 1.6),
                                maxLines: 5,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Row(
                      children: [
                        Card(
                            margin: EdgeInsets.all(5),
                            color: AppColor.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  120), // Adjust the radius as needed
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                Icons.wifi_calling_3_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            )),
                        SizedBox(
                          width: width * .02,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Call us:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: width * .5,
                                child: Text(
                                  '(820) 865-0598',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      height: 1.6),
                                  maxLines: 5,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget contactForm() {
    return Form(
      child: Container(
        padding: EdgeInsets.only(
          left: width * .05,
          right: width * .05,
          top: MediaQuery.of(context).size.height * .1,
          bottom: MediaQuery.of(context).size.width * .05,
        ),
        // width: 100,
        child: Column(
          key: _formKey,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Got a query ? Kindly fill in the form and we shall get back to you.',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: height * .05,
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
                  hintText: 'Email',
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
                  hintText: 'Company',
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
                  hintText: 'Services/Technologies interested in',
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
                  hintText: 'How can i help you',
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
                child: Text('Submit',
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
}
