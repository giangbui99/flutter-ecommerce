import 'package:flutter/material.dart';

class BrandMobile extends StatelessWidget {
  const BrandMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 40,
      ),
      width: double.infinity,
      color: const Color(0xFF000000),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/versace_brand.png',
                width: 116.74,
                height: 23.25,
              ),
              Image.asset(
                'assets/images/zara_brand.png',
                width: 63.81,
                height: 26.65,
              ),
              Image.asset(
                'assets/images/gucci_brand.png',
                width: 109.39,
                height: 25.24,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/prada_brand.png',
                width: 127,
                height: 21,
              ),
              Image.asset(
                'assets/images/calvin_klein_brand.png',
                width: 134.84,
                height: 21.75,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
