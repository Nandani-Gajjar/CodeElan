import 'package:codeelan/UI/screens/aboutUs.dart';
import 'package:codeelan/UI/screens/contact-us.dart';
import 'package:flutter/material.dart';

import 'Responsive.dart';
import 'app_colors.dart';


class Header extends StatelessWidget {
   Header({Key? key}) : super(key: key);
  double height = 0.0;
  double width = 0.0;
   double size = 0.0;

   @override
  Widget build(BuildContext context) {
   
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    size = MediaQuery.of(context).size.longestSide;

    return Column(children: [title(context),tabs(context)]);
  }
   Widget title(BuildContext context) {
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
                 onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Aboutus()));
                },
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
                 onPressed: () {  Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) =>
                         const Contactus()));        },
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
                 onPressed: () {

                 },
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
