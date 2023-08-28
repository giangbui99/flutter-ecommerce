import 'package:flutter/material.dart';

class StatisticalMobile extends StatelessWidget {
  const StatisticalMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '200+',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 1.35,
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, -6, 0),
                      child: const Text(
                        'International Brands',
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 22 / 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                const VerticalDivider(
                  color: Color(0x1A000000),
                  thickness: 1,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '2,000+',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 1.35,
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, -6, 0),
                      child: const Text(
                        'High-Quality Products',
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 22 / 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '30,000+',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  height: 1.35,
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0, -6, 0),
                child: const Text(
                  'Happy Customers',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 22 / 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
