import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';
import 'package:flutter_ecommerce/presentation/components/home/brand/brand_desktop.dart';
import 'package:flutter_ecommerce/presentation/components/home/brand/brand_mobile.dart';

class Brand extends StatelessWidget {
  const Brand({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isDesktop(context)) {
      return const BrandDesktop();
    }
    return const BrandMobile();
  }
}
