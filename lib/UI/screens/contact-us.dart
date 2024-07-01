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

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.lightBlue,
        body: ListView(
          children: [
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                ? Header()
                : const SizedBox(),
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
            form()
          ],
        ),
      ),
    );
  }

  Widget form() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
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
                  ],
                ),
              ),
            ),
           Expanded(child: contactForm())
          ],
        ),
      ],
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget contactForm() {
    return Form(
      child: Container(
        // padding: EdgeInsets.only(
        //   left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
        //       ? width * .1
        //       : width * .05,
        //   right:
        //   Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
        //       ? width * .1
        //       : width * .05,
        //   top: MediaQuery.of(context).size.height * .05,
        // bottom: MediaQuery.of(context).size.width * .1s,
        // ),
        // width: 100,
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
                    borderRadius: BorderRadius.circular(0),
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
}
