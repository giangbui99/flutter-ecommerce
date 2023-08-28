import 'package:flutter/material.dart';

class BrandDesktop extends StatelessWidget {
  const BrandDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF000000),
      height: 122,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/versace_brand.png',
              width: 166.48,
              height: 33.16,
            ),
            Image.asset(
              'assets/images/zara_brand.png',
              width: 91,
              height: 38,
            ),
            Image.asset(
              'assets/images/gucci_brand.png',
              width: 156,
              height: 36,
            ),
            Image.asset(
              'assets/images/prada_brand.png',
              width: 194,
              height: 32,
            ),
            Image.asset(
              'assets/images/calvin_klein_brand.png',
              width: 206.79,
              height: 33.35,
            ),
          ],
        ),
      ),
    );
  }
}
