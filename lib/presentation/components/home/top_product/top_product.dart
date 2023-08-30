import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';
import 'package:flutter_ecommerce/domain/entities/Product.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_product/top_product_desktop.dart';
import 'package:flutter_ecommerce/presentation/components/home/top_product/top_product_mobile.dart';

class TopProducts extends StatelessWidget {
  final String content;

  const TopProducts({
    super.key,
    required this.content,
  });

  static List<Product> products = [
    Product.withoutOffer('P1', 't_shirt_with_tape_details.png',
        'T-shirt with Tape Details', 4.5, 120),
    Product('P2', 'skinny_fit_jeans.png', 'Skinny Fit Jeans', 3.5, 240, 0.2),
    Product.withoutOffer(
        'P3', 'checkered_shirt.png', 'Checkered Shirt', 4.5, 180),
    Product('P4', 'sleeve_striped_t_shirt.png', 'Sleeve Striped T-shirt', 4.5,
        130, 0.3),
  ];

  @override
  Widget build(BuildContext context) {
    if (ResponsiveLayout.isDesktop(context)) {
      return TopProductsDesktop(
        content: content,
        products: products,
      );
    }
    return TopProductsMobile(
      content: content,
      products: products,
    );
  }
}
