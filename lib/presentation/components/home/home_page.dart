import 'package:flutter_ecommerce/config/responsive_layout.dart';
import 'package:flutter_ecommerce/presentation/components/home/brand/brand.dart';
import 'package:flutter_ecommerce/presentation/components/home/header/header.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_product/top_product.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_banner/top_banner/top_banner.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_bar/top_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const Header(),
              const TopBanner(),
              const Brand(),
              const TopProducts(
                content: 'New Arrivals',
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: ResponsiveLayout.isDesktop(context) ? 64 : 40,
                  left: ResponsiveLayout.isDesktop(context)
                      ? MediaQuery.of(context).size.width * 100 / 1440
                      : MediaQuery.of(context).size.width * 16 / 390,
                  right: ResponsiveLayout.isDesktop(context)
                      ? MediaQuery.of(context).size.width * 100 / 1440
                      : MediaQuery.of(context).size.width * 16 / 390,
                ),
                child: const Divider(
                  height: 1,
                  color: Color(0x1A000000),
                ),
              ),
              const TopProducts(
                content: 'Top Selling',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
