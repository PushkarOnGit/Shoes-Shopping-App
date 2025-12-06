import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          Text(
            price.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Center(child: Image.asset(image, height: 175)),
        ],
      ),
    );
  }
}
