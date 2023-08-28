import 'package:flutter_ecommerce/config/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/components/home/header/header_desktop.dart';
import 'package:flutter_ecommerce/presentation/components/home/header/header_mobile.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isDesktop(context)) {
      return const HeaderDesktop();
    }
    return const HeaderMobile();
  }
}
