import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Rating extends StatelessWidget {
  final double ratingNumber;

  const Rating({
    super.key,
    required this.ratingNumber,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];
    int integerPart = ratingNumber ~/ 1;
    double fractionalPart = ratingNumber - integerPart;

    if (ratingNumber > 0) {
      while (integerPart > 0) {
        stars.add(
          SvgPicture.asset(
            'assets/images/star.svg',
            width: ResponsiveLayout.isDesktop(context) ? 18.49 : 15.47,
          ),
        );
        stars.add(
          SizedBox(
            width: ResponsiveLayout.isDesktop(context) ? 5.31 : 4.44,
          ),
        );
        integerPart--;
      }
    }

    if (fractionalPart >= 0.75) {
      stars.add(
        SvgPicture.asset(
          'assets/images/star.svg',
          width: ResponsiveLayout.isDesktop(context) ? 18.49 : 15.47,
        ),
      );
      stars.add(
        SizedBox(
          width: ResponsiveLayout.isDesktop(context) ? 5.31 : 4.44,
        ),
      );
    } else if (fractionalPart >= 0.25) {
      stars.add(
        SvgPicture.asset(
          'assets/images/half_star.svg',
          width: ResponsiveLayout.isDesktop(context) ? 8.79 : 7.36,
        ),
      );
      stars.add(
        SizedBox(
          width: ResponsiveLayout.isDesktop(context) ? 13 : 11,
        ),
      );
    }

    stars.add(
      RichText(
        text: TextSpan(
          text: ratingNumber.toString(),
          style: TextStyle(
            color: const Color(0xFF000000),
            fontSize: ResponsiveLayout.isDesktop(context) ? 14 : 12,
            fontWeight: FontWeight.w400,
          ),
          children: [
             TextSpan(
              text: '/5',
              style: TextStyle(
                color: const Color(0x99000000),
                fontSize: ResponsiveLayout.isDesktop(context) ? 14 : 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: stars,
    );
  }
}
