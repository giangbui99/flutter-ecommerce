import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/shop_now_button.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/statistical/statistical.dart';
import 'dart:math';

import 'package:flutter_ecommerce/presentation/components/home/top_banner/top_slogan.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/top_sub_content.dart';

class TopBannerDesktop extends StatefulWidget {
  const TopBannerDesktop({super.key});

  @override
  State<TopBannerDesktop> createState() => _TopBannerState();
}

class _TopBannerState extends State<TopBannerDesktop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/banner_desktop.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 100 / 1440,
            right: MediaQuery.of(context).size.width * 100 / 1440,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width >= 1440
                          ? 103
                          : max(
                              MediaQuery.of(context).size.width - 1337,
                              40,
                            ),
                    ),
                    const TopSlogan(),
                    const SizedBox(
                      height: 32,
                    ),
                    const TopSubContent(),
                    const SizedBox(
                      height: 32,
                    ),
                    const ShopNowButton(),
                    const SizedBox(
                      height: 48,
                    ),
                    const Statistical(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
            left: MediaQuery.of(context).size.width * (750 / 1440),
            top: 297,
            child: Image.asset(
              'assets/images/4_pointed_star.png',
              width: 56,
            )),
        Positioned(
          left: MediaQuery.of(context).size.width * (1255 / 1440),
          top: 86,
          child: Image.asset(
            'assets/images/4_pointed_star.png',
            width: 104,
          ),
        ),
      ],
    );
  }
}
