import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';

class TopSubContent extends StatelessWidget {
  const TopSubContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isDesktop(context) ? const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Browse through our diverse range of meticulously crafted garments, designed ',
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 1.375,
            color: Color(0x99000000),
          ),
        ),
        Text(
          'to bring out your individuality and cater to your sense of style.',
          style: TextStyle(
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 1.375,
            color: Color(0x99000000),
          ),
        ),
      ],
    ) : const Text(
      'Browse through our diverse range of meticulously crafted garments, designed to bring out your individuality and cater to your sense of style.',
      style: TextStyle(
        fontFamily: 'Satoshi',
        fontWeight: FontWeight.w300,
        fontSize: 14,
        height: (20 / 14),
        color: Color(0x99000000),
      ),
    );
  }
}
