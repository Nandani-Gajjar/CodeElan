import 'package:codeelan/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<KubernetAdoptionData> kubernetServiceList = <KubernetAdoptionData>[
  KubernetAdoptionData(
    icon: Icon(
      Icons.cloud_done,
      color: AppColor.primary,
      size: 60,
    ),
    title: 'Kubernetes Strategy and Consulting',
    subTitle:
        'Our experts work closely with your team to develop a comprehensive Kubernetes adoption strategy aligned with your business goals. We assess your existing infrastructure, applications, and requirements to create a tailored plan for a successful Kubernetes implementation.',
  ),
  KubernetAdoptionData(
      icon: Icon(Icons.screen_search_desktop_outlined,
          color: AppColor.primary, size: 60),
      title: 'Infrastructure Setup',
      subTitle:
          'We assist in setting up a robust and scalable Kubernetes infrastructure tailored to your specific needs. Our team configures clusters, networking, and storage components, ensuring a reliable foundation for your containerized applications.'),
  KubernetAdoptionData(
      icon: Icon(Icons.javascript, color: AppColor.primary, size: 60),
      title: 'Application Containerization',
      subTitle:
          'We help containerize your applications, enabling seamless deployment, scalability, and portability. Our experts leverage best practices to package your applications into containers, ensuring consistency and flexibility across different environments.'),
  KubernetAdoptionData(
      icon: Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
      title: 'Kubernetes Deployment and Orchestration',
      subTitle:
          'We deploy and orchestrate your containerized applications using Kubernetes, ensuring efficient scaling, load balancing, and fault tolerance. We optimize resource utilization and enhance application performance, providing a resilient and highly available environment.'),
  KubernetAdoptionData(
      icon: Icon(Icons.security, color: AppColor.primary, size: 60),
      title: 'Monitoring and Management',
      subTitle:
          'We implement robust monitoring and management solutions for your Kubernetes clusters and applications. Our experts configure logging, monitoring, and alerting systems to provide visibility into your infrastructure, identify issues, and ensure optimal performance.'),
  KubernetAdoptionData(
      icon: Icon(Icons.handshake_sharp, color: AppColor.primary, size: 60),
      title: 'Training and Support',
      subTitle:
          'We provide comprehensive training and support to your team, enabling them to effectively manage and operate in the Kubernetes environment. Our training programs equip your staff with the necessary skills to deploy, scale, and manage containerized applications using Kubernetes.')
];

class KubernetAdoptionData {
  KubernetAdoptionData({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Icon icon;
  final String title;
  final String subTitle;
}
