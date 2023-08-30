import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderMobile extends StatefulWidget {
  const HeaderMobile({super.key});

  @override
  State<HeaderMobile> createState() => _HeaderMobileState();
}

class _HeaderMobileState extends State<HeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 23,
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/images/hamburger_icon.svg',
                    height: 20, width: 20),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  transform: Matrix4.translationValues(0, -3, 0),
                  child: const Text(
                    "SHOP.CO",
                    style: TextStyle(
                      fontFamily: 'Integral CF',
                      fontWeight: FontWeight.w700,
                      fontSize: 25.2,
                      color: Color(0xFF000000),
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/search.svg',
                  height: 24,
                  width: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                SvgPicture.asset(
                  'assets/images/cart.svg',
                  height: 24,
                  width: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                SvgPicture.asset(
                  'assets/images/user.svg',
                  height: 24,
                  width: 24,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
