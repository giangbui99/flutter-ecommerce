import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 100 / 1440,
        vertical: 24,
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              transform: Matrix4.translationValues(0, -3, 0),
              child: Text(
                "SHOP.CO".toUpperCase(),
                style: const TextStyle(
                  fontFamily: 'Integral CF',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Color(0xFF000000),
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Shop',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF000000),
                        height: 1.35,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset(
                      'assets/images/caret_down_icon.svg',
                    ),
                  ],
                ),
                const SizedBox(
                  width: 24,
                ),
                const Text(
                  'On Sale',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF000000),
                    height: 1.35,
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                const Text(
                  'New Arrivals',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF000000),
                    height: 1.35,
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                const Text(
                  'Brands',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF000000),
                    height: 1.35,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 40,
            ),
            Expanded(
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF0F0F0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(62),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search for products...',
                  focusColor: const Color(0xFFF0F0F0),
                  hoverColor: const Color(0xFFF0F0F0),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(
                      left: 12,
                      top: 16,
                      bottom: 16,
                      right: 12,
                    ),
                    child: Icon(
                      Icons.search,
                      size: 24,
                    ),
                  ),
                  prefixIconColor: const Color(0x66000000),
                ),
                style: const TextStyle(
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0x66000000),
                  height: 1.35,
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/cart.svg',
                  height: 24,
                  width: 24,
                ),
                const SizedBox(
                  width: 14,
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
