import 'package:codeelan/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<CloudMigrationServicedata> cloudMigrationServiceList =
    <CloudMigrationServicedata>[
  CloudMigrationServicedata(
      icon: Icon(
        Icons.cloud_done,
        color: AppColor.primary,
        size: 60,
      ),
      title: 'Comprehensive Cloud Assessment',
      subTitle:
          'Our experts conduct face-to-face interviews with your business and IT stakeholders to gain a deep understanding of your unique requirements and challenges. We perform an architectural assessment and identify opportunities for cost and capacity optimization, ensuring an efficient migration plan.'),
  CloudMigrationServicedata(
      icon: Icon(Icons.screen_search_desktop_outlined,
          color: AppColor.primary, size: 60),
      title: "Migration Strategy Formulation",
      subTitle:
          'We help you prioritize the applications, processes, and infrastructure to be migrated, and then formulate a migration strategy that aligns with your specific needs. Our approach addresses potential risks and ensures minimal disruption to your operations.'),
  CloudMigrationServicedata(
      icon: Icon(Icons.javascript, color: AppColor.primary, size: 60),
      title: 'Platform Selection',
      subTitle:
          'We guide you in choosing the most suitable cloud platform - public, private, or hybrid - based on your business requirements. Our experts assess your regulatory and compliance needs, including HIPAA, PCI, SOC 1 and 2, and GDPR, to ensure adherence to industry standards.'),
  CloudMigrationServicedata(
      icon: Icon(Icons.dataset_outlined, color: AppColor.primary, size: 60),
      title: 'Migration Approach',
      subTitle:
          'We assist you in deciding the most appropriate migration approach for each application or system:\nRehost: Lift and shift with minimal changes.\nRefactor: Optimize applications and leverage cloud services through refactoring.\nRebuild: Replace or build cloud-native applications with improved features.\nRevise: Develop and productize common services, consolidating applications.\nReplatform: Move to cloud-aligned technology, integrating with cloud operations.'),
    CloudMigrationServicedata(
      icon: Icon(Icons.security, color: AppColor.primary, size: 60),
      title: 'Public, Private, and Hybrid Clouds',
      subTitle:
          'We guide you in choosing the appropriate cloud deployment model based on your specific requirements. Public clouds offer ownership and management by cloud providers, while private clouds provide dedicated infrastructure. Hybrid clouds combine on-premises and private clouds to reap the advantages of both.'),
  CloudMigrationServicedata(
      icon: Icon(Icons.handshake_sharp, color: AppColor.primary, size: 60),
      title: 'Data Migration Best Practices',
      subTitle:
          'We employ industry best practices for data migration, including the use of bi-directional syncing mechanisms between on-premises and cloud databases. We also leverage cloud data migration services available from leading providers such as Amazon Web Services and Microsoft Azure and more to ensure secure and efficient data transfer.')
];

class CloudMigrationServicedata {
  CloudMigrationServicedata({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Icon icon;
  final String title;
  final String subTitle;
}
