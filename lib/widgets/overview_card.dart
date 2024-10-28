import 'package:flutter/material.dart';

import 'package:prakhar_portfolio/utils/colors.dart';


class OverviewCard extends StatelessWidget {
  const OverviewCard({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

 
    final double cardWidth = screenWidth < 600 ? (screenWidth * 0.5).toDouble() : 220;
    final double cardHeight = screenWidth < 600 ? (screenWidth * 0.55).toDouble() : 245;
    final double imageSize = screenWidth < 600 ? 35.0 : 45.0;
    final double fontSize = screenWidth < 600 ? 16.0 : 20.0;

    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        color: CustomColors.brightBackground,
        border: Border.all(color: CustomColors.primary),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0,
            blurRadius: 8,
            color: CustomColors.primary,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: imageSize,
            height: imageSize,
          ),
          const SizedBox(height: 15),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
