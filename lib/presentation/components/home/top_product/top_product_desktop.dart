import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/domain/entities/Product.dart';
import 'package:flutter_ecommerce/presentation/components/shared/product_card.dart';

class TopProductsDesktop extends StatefulWidget {
  final String content;
  final List<Product> products;
  const TopProductsDesktop({super.key, required this.content, required this.products,});

  @override
  State<TopProductsDesktop> createState() => _TopProductsDesktopState();
}

class _TopProductsDesktopState extends State<TopProductsDesktop> {
  int _newArrivalPage = 1;

  void _incrementCounter() {
    setState(() {
      if (_newArrivalPage * 4 < widget.products.length) {
        _newArrivalPage++;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _newArrivalPage = 1;
    });
  }

  void viewNewArrivals() {
    if (_newArrivalPage * 4 >= widget.products.length) {
      _resetCounter();
    } else {
      _incrementCounter();
    }
  }

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 295 / 1440;

    return Padding(
      padding: EdgeInsets.only(
        top: 72,
        left: MediaQuery.of(context).size.width * 100 / 1440,
        right: MediaQuery.of(context).size.width * 100 / 1440,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              widget.content.toUpperCase(),
              style: const TextStyle(
                fontFamily: 'Integral CF',
                fontSize: 48,
                height: 1.2,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
              ),
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          Wrap(
            spacing: MediaQuery.of(context).size.width * 19 / 1440,
            children: [
              ...widget.products.sublist(0, min(_newArrivalPage * 4, widget.products.length)).map(
                    (e) => ProductCard(
                      product: e,
                      cardWidth: cardWidth,
                    ),
                  ),
            ],
          ),
          const SizedBox(
            height: 36,
          ),
          OutlinedButton(
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
            child: Text(
              _newArrivalPage * 4 >= widget.products.length ? "View Less" : "View All",
              style: const TextStyle(
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF000000),
                height: 1.35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
