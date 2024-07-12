import 'package:codeelan/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  List<CloudFoundationServicedata> cloudFoundationServiceList = <CloudFoundationServicedata>[
  CloudFoundationServicedata(
      icon: Icon(Icons.cloud_done,color: AppColor.primary,size: 60,),
      title: 'Cloud Strategy Development',
      subTitle:
          'We work closely with your team to develop a robust cloud strategy aligned with your business objectives. Our experts analyze your existing infrastructure, applications, and requirements to create a tailored roadmap for your cloud journey.'),
  CloudFoundationServicedata(
      icon: Icon(Icons.screen_search_desktop_outlined,color: AppColor.primary,size: 60),
      title: "Architecture and Design",
      subTitle:
          "Our experienced architects design scalable and secure cloud architectures to optimize performance, enhance reliability, and minimize costs. We leverage best practices and industry standards to ensure a resilient foundation for your cloud infrastructure."),
  CloudFoundationServicedata(
      icon: Icon(Icons.javascript,color: AppColor.primary,size: 60),
      title: 'Cloud Infrastructure Setup',
      subTitle:
          'We assist in setting up your cloud infrastructure, including network configurations, virtual machines, storage systems, and security protocols. Our meticulous approach ensures a seamless and efficient deployment, reducing downtime and disruptions.'),
  CloudFoundationServicedata(
      icon: Icon(Icons.dataset_outlined,color: AppColor.primary,size: 60),
      title: 'Data Migration and Integration',
      subTitle:
          'Our team efficiently migrates your data and applications to the cloud, minimizing risks and ensuring data integrity. We seamlessly integrate your existing systems with cloud services, enabling seamless communication and collaboration across your organization.'),
  CloudFoundationServicedata(
      icon: Icon(Icons.security,color: AppColor.primary,size: 60),
      title: 'Secure Cloud',
      subTitle:
          'We prioritize the security of your cloud environment. Our experts implement robust security measures, including access controls, encryption, and monitoring tools, to protect your sensitive data.')
];

class CloudFoundationServicedata {
   CloudFoundationServicedata({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Icon   icon;
  final String title;
  final String subTitle;
}
