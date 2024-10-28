import 'package:flutter/material.dart';

import 'package:prakhar_portfolio/utils/colors.dart';
import 'package:prakhar_portfolio/utils/constants.dart';
import 'package:prakhar_portfolio/utils/image.dart';
  

class TechStack extends StatelessWidget {
  const TechStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;

    List<String> techStackImages = [
      ImageAssets.flutter,
      ImageAssets.firebase,
      ImageAssets.firestore,
      
      ImageAssets.riverpod,
      ImageAssets.node,
      ImageAssets.MachineLearning,
      ImageAssets.flask,
      ImageAssets.docker,
      ImageAssets.git,
      ImageAssets.gith,
      ImageAssets.CPlus,
      ImageAssets.C,

    ];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widthOfScreen > 800
            ? widthOfScreen * Constants.mediumAndAboveHorizontalPaddingRatio
            : widthOfScreen * Constants.smallHorizontalPaddingRatio,
        vertical: 50,  
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Tech Stack',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: techStackImages.map((image) {
              return CircleAvatar(
                backgroundColor: CustomColors.imageCircleBackground,
                radius: 40,
                backgroundImage: AssetImage(image),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
