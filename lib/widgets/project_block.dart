import 'package:flutter/material.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:reactable/reactable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:prakhar_portfolio/utils/colors.dart';


class ExperienceBlock extends StatefulWidget {
  const ExperienceBlock({
    super.key,
    required this.image,
    required this.title,
    required this.description,
   
    required this.topPadding,
    required this.playAnimation,
    required this.cardAlignment,
    required this.timeTextPadding,
    required this.multidirection,
    this.githubLink, 
  });

  final String image;
  final String title;
  final String description;

  final double topPadding;
  final Reactable<bool> playAnimation;
  final Alignment cardAlignment;
  final EdgeInsetsGeometry timeTextPadding;
  final bool multidirection;
  final String? githubLink; 

  @override
  State<ExperienceBlock> createState() => _ExperienceBlockState();
}

class _ExperienceBlockState extends State<ExperienceBlock> {
  bool isHovering = false;

  void _launchURL() async {
    if (widget.githubLink != null) {
      final url = Uri.parse(widget.githubLink!);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      return SizedBox(
        child: VisibilityDetector(
          key: Key(widget.image),
          onVisibilityChanged: (visibilityInfo) {
            double visiblePercentage = visibilityInfo.visibleFraction * 100;
            if (visiblePercentage > 80 && !widget.playAnimation.value) {
              widget.playAnimation.value = true;
            }
          },
          child: MouseRegion(
            onEnter: (_) => setState(() => isHovering = true),
            onExit: (_) => setState(() => isHovering = false),
            child: InkWell(
              onTap: _launchURL,
              child: Scope(builder: (context) {
                return Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: widget.multidirection ? Alignment.topCenter : Alignment.topLeft,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(widget.image),
                        ),
                      )
                      .animate(target: widget.playAnimation.value ? 1 : 0)
                      .scale(curve: Curves.easeIn, begin: const Offset(1, 1), end: const Offset(1.5, 1.5))
                      .fadeIn()
                      .then()
                      .scale(curve: Curves.easeIn, begin: const Offset(1.5, 1.5), end: const Offset(1, 1)),
                    ),
                    Align(
                      alignment: widget.cardAlignment,
                      child: Column(
                        children: [
                          Container(
                            width: widget.multidirection ? maxWidth * 0.3 : maxWidth * 0.7,
                            color: isHovering ? CustomColors.primary : CustomColors.brightBackground, 
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.title,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(widget.description,
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: widget.multidirection ? maxWidth * 0.3 : maxWidth * 0.7,
                            height: 5,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                    .animate(target: widget.playAnimation.value ? 1 : 0)
                    .moveX(end: widget.cardAlignment == Alignment.topLeft ? 100 : -100, duration: 1.seconds, curve: Curves.elasticOut)
                    .fadeIn(duration: 1.seconds, curve: Curves.elasticOut),
                    widget.multidirection
                        ? Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: widget.timeTextPadding,
                              child: const Column(
                                children: [],
                              ),
                            ),
                          )
                        .animate(target: widget.playAnimation.value ? 1 : 0)
                        .moveX(end: widget.cardAlignment == Alignment.topLeft ? 70 : -70, duration: 1.seconds, curve: Curves.elasticOut)
                        .fadeIn()
                        : const SizedBox.shrink()
                  ],
                );
              }),
            ),
          ),
        ),
      );
    });
  }
}
