import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/statistical/statistical_desktop.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/statistical/statistical_mobile.dart';

class Statistical extends StatelessWidget {
  const Statistical({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isDesktop(context)) {
      return const StatisticalDesktop();
    }
    return const StatisticalMobile();
  }
}
