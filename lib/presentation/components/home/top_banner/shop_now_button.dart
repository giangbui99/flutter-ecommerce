import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';

class ShopNowButton extends StatefulWidget {
  const ShopNowButton({super.key});

  @override
  State<ShopNowButton> createState() => _ShopNowButtonState();
}

class _ShopNowButtonState extends State<ShopNowButton> {
  void handleShopNow() {}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: ResponsiveLayout.isDesktop(context)
            ? const Size(210, 52)
            : Size(MediaQuery.of(context).size.width, 52),
        backgroundColor: const Color(0xFF000000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(62.0),
        ),
      ),
      onPressed: handleShopNow,
      child: const Text(
        "Shop Now",
        style: TextStyle(
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Color(0xFFFFFFFF),
          height: 1.35,
        ),
      ),
    );
  }
}
