import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/responsive_layout.dart';
import 'package:flutter_ecommerce/domain/entities/Product.dart';
import 'package:flutter_ecommerce/presentation/components/shared/rating.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  double? offer;
  double cardWidth;

  ProductCard({
    super.key,
    required this.product,
    required this.cardWidth,
    this.offer,
  });

  @override
  State<ProductCard> createState() => _CardState();
}

class _CardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/${widget.product.getImage}'),
          SizedBox(
            height: ResponsiveLayout.isDesktop(context) ? 16 : 10,
          ),
          Text(
            widget.product.getName,
            style: TextStyle(
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w700,
              fontSize: ResponsiveLayout.isDesktop(context) ? 20 : 16,
              height: ResponsiveLayout.isDesktop(context) ? 27 / 20 : 1.35,
              color: const Color(0xFF000000),
            ),
          ),
          SizedBox(
            height: ResponsiveLayout.isDesktop(context) ? 8.26 : 4.27,
          ),
          Rating(
            ratingNumber: widget.product.getRating,
          ),
          SizedBox(
            height: ResponsiveLayout.isDesktop(context) ? 8.26 : 4.25,
          ),
          Row(
            children: [
              Text(
                '\$${widget.product.getPrice.toString()}',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w700,
                  fontSize: ResponsiveLayout.isDesktop(context) ? 24 : 20,
                  height: ResponsiveLayout.isDesktop(context) ? 1.35 : 27 / 20,
                  color: const Color(0xFF000000),
                ),
              ),
              SizedBox(
                width: ResponsiveLayout.isDesktop(context) ? 10 : 5,
              ),
              widget.product.getOffer != null
                  ? Text(
                      '\$${widget.product.getPrice * (1 + widget.product.getOffer!)}',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w700,
                        fontSize: ResponsiveLayout.isDesktop(context) ? 24 : 20,
                        height: ResponsiveLayout.isDesktop(context)
                            ? 1.35
                            : 27 / 20,
                        color: const Color(0x66000000),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.grey,
                      ),
                    )
                  : Container(),
              SizedBox(
                width: ResponsiveLayout.isDesktop(context) ? 10 : 5,
              ),
              widget.product.getOffer != 0
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62.0),
                        color: const Color(0x1AFF3333),
                      ),
                      child: Text(
                        '-${widget.product.getOffer! * 100}%',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize:
                              ResponsiveLayout.isDesktop(context) ? 12 : 10,
                          color: const Color(0xFFFF3333),
                          height: 1.35,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
