import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/shop_now_button.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/statistical/statistical_mobile.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/top_slogan.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/top_sub_content.dart';

class TopBannerMobile extends StatelessWidget {
  const TopBannerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xFFF2F0F1),
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 40,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopSlogan(),
              SizedBox(
                height: 20,
              ),
              TopSubContent(),
              SizedBox(
                height: 24,
              ),
              ShopNowButton(),
              SizedBox(
                height: 20,
              ),
              StatisticalMobile(),
            ],
          ),
        ),
        Container(
          color: const Color(0xFFF2F0F1),
          child: Stack(
            children: [
              Align(
                child: Image.asset(
                  'assets/images/banner_mobile.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width * (27 / 390),
                  top: 137,
                  child: Image.asset(
                    'assets/images/4_pointed_star.png',
                    width: 44,
                  )),
              Positioned(
                right: MediaQuery.of(context).size.width * (21 / 390),
                top: 40,
                child: Image.asset(
                  'assets/images/4_pointed_star.png',
                  width: 76,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
