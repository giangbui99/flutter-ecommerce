import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';

import '../../../../domain/entities/Product.dart';
import '../../shared/product_card.dart';

class TopProductsMobile extends StatefulWidget {
  final String content;
  final List<Product> products;

  const TopProductsMobile({
    super.key,
    required this.content,
    required this.products,
  });

  @override
  State<TopProductsMobile> createState() => _TopProductsMobileState();
}

class _TopProductsMobileState extends State<TopProductsMobile> {
  void viewNewArrivals() {}

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 198 / 320;

    return Padding(
      padding: EdgeInsets.only(
        top: 50,
        left: MediaQuery.of(context).size.width * 16 / 390,
        right: MediaQuery.of(context).size.width * 16 / 390,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              widget.content.toUpperCase(),
              style: const TextStyle(
                fontFamily: 'Integral CF',
                fontSize: 32,
                height: 1.2,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...widget.products
                    .asMap()
                    .entries
                    .map(
                      (e) => Container(
                        padding: EdgeInsets.only(
                          right: ResponsiveLayout.isMobile(context) &&
                                  e.key != widget.products.length - 1
                              ? MediaQuery.of(context).size.width * 16 / 390
                              : 0,
                        ),
                        child: ProductCard(
                          product: e.value,
                          cardWidth: cardWidth,
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(218, 52),
                backgroundColor: const Color(0xFFFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(62.0),
                ),
                side: const BorderSide(
                  color: Color(0x1A000000),
                  width: 1,
                ),
              ),
              onPressed: viewNewArrivals,
              child: const Text(
                "View All",
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF000000),
                  height: 1.35,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
