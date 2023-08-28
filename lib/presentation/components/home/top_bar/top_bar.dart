import 'package:flutter_ecommerce/config/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: ResponsiveLayout.isDesktop(context) ? 38 : 34,
          color: const Color(0xFF000000),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sign up and get 20% off to your first order. ',
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w400,
                  fontSize: ResponsiveLayout.isDesktop(context) ? 14 : 12,
                  height:
                      ResponsiveLayout.isDesktop(context) ? (18.9 / 14) : (16.2 / 14),
                ),
              ),
              Text(
                'Sign Up Now',
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500,
                  decoration: ResponsiveLayout.isDesktop(context)
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  decorationColor: const Color(0xFFFFFFFF),
                  fontSize: ResponsiveLayout.isDesktop(context) ? 14 : 12,
                  height:
                      ResponsiveLayout.isDesktop(context) ? (18.9 / 14) : (16.2 / 14),
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * 100 / 1440,
          child: ResponsiveLayout.isDesktop(context)
              ? SvgPicture.asset(
                  'assets/images/x_button.svg',
                  height: 20,
                  width: 20,
                )
              : Container(),
        ),
      ],
    );
  }
}
