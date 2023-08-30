import 'package:flutter/material.dart';

class StatisticalDesktop extends StatelessWidget {
  const StatisticalDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '200+',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                        height: 1.08,
                      ),
                    ),
                    Text(
                      'International Brands',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.375,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Color(0x1A000000),
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2,000+',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                        height: 1.08,
                      ),
                    ),
                    Text(
                      'High-Quality Products',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.375,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Color(0x1A000000),
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '30,000+',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                        height: 1.08,
                      ),
                    ),
                    Text(
                      'Happy Customers',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.08,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ],
    );
  }
}
