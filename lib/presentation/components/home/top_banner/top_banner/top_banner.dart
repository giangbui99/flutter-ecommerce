import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/top_banner/top_banner_desktop.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/top_banner/top_banner_mobile.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isDesktop(context)) {
      return const TopBannerDesktop();
    }
    return const TopBannerMobile();
  }
}
