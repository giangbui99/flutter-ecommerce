import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';

class TopSlogan extends StatelessWidget {
  const TopSlogan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FIND CLOTHES'.toUpperCase(),
          style: TextStyle(
            fontFamily: 'Integral CF',
            fontWeight: FontWeight.w700,
            fontSize: ResponsiveLayout.isDesktop(context) ? 64 : 36,
            height: 1,
          ),
        ),
        Text(
          'THAT MATCHES'.toUpperCase(),
          style: TextStyle(
            fontFamily: 'Integral CF',
            fontWeight: FontWeight.w700,
            fontSize: ResponsiveLayout.isDesktop(context) ? 64 : 36,
            height: 1,
          ),
        ),
        Text(
          'YOUR STYLE'.toUpperCase(),
          style: TextStyle(
            fontFamily: 'Integral CF',
            fontWeight: FontWeight.w700,
            fontSize: ResponsiveLayout.isDesktop(context) ? 64 : 36,
            height: 1,
          ),
        ),
      ],
    );
  }
}
