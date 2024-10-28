import 'package:flutter/material.dart';
import 'package:prakhar_portfolio/utils/breakpoints.dart';
import 'package:prakhar_portfolio/utils/colors.dart';
import 'package:prakhar_portfolio/widgets/logo.dart';



class Footer extends StatelessWidget {
  const Footer({Key? key, required this.homeKey}) : super(key: key);
  final GlobalKey homeKey;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      return Container(
          color: CustomColors.darkBackground,
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Logo(homeKey: homeKey,),
              const SizedBox(height: 22),
              maxWidth > Breakpoints.md
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Copyright © 2024 Prakhar Srivastava',
                            style: TextStyle(
                                color: CustomColors.gray, fontSize: 14)),
                        Text('All rights reserved',
                            style: TextStyle(
                                color: CustomColors.gray, fontSize: 14)),
                        Text('srivastavaprakhar1007@gmail.com',
                            style: TextStyle(
                                color: CustomColors.gray, fontSize: 14)),
                      ],
                    )
                  : const Column(
                      children: [
                        Text('Copyright © 2024 Prakhar Srivastava',
                            style: TextStyle(
                                color: CustomColors.gray, fontSize: 14)),
                        Text('All rights reserved',
                            style: TextStyle(
                                color: CustomColors.gray, fontSize: 14)),
                        Text('srivastavaprakhar1007@gmail.com',
                            style: TextStyle(
                                color: CustomColors.gray, fontSize: 14)),
                      ],
                    ),
            ],
          ));
    });
  }
}
