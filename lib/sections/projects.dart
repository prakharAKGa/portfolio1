import 'package:flutter/material.dart';

import 'package:prakhar_portfolio/utils/breakpoints.dart';
import 'package:prakhar_portfolio/utils/colors.dart';




import 'package:prakhar_portfolio/utils/constants.dart';
import 'package:prakhar_portfolio/utils/image.dart';
import 'package:prakhar_portfolio/widgets/project_block.dart';


import 'package:reactable/reactable.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  final Reactable<bool> showAndroidExperience = false.asReactable;
  final Reactable<bool> showFlutterExperience = false.asReactable;
  final Reactable<bool> showNestjsExperience = false.asReactable;
  final Reactable<double> heightOfTez = 10.0.asReactable;
  final Reactable<double> heightOfdisability = 10.0.asReactable;
  final Reactable<double> heightOfNotify = 10.0.asReactable; 
  final Reactable<double> heightOffacedetection = 10.0.asReactable;
  final Reactable<double> heightOfStreamflex = 10.0.asReactable; 

  final GlobalKey tezKey = GlobalKey();
  final GlobalKey disabilityKey = GlobalKey();
  final GlobalKey notifyKey = GlobalKey(); 
  final GlobalKey facedetectionKey = GlobalKey();
  final GlobalKey streamflexKey = GlobalKey(); 
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      return Stack(
        children: [
          Positioned(
              top: 300,
              right: 400,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: CustomColors.purple,
                    borderRadius: BorderRadius.circular(30)),
              )),
          Positioned(
              top: 140,
              right: 650,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: CustomColors.primary,
                    borderRadius: BorderRadius.circular(30)),
              )),
          Positioned(
              top: 140,
              left: 400,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: CustomColors.secondary,
                    borderRadius: BorderRadius.circular(30)),
              )),
          Positioned(
              top: 700,
              left: 430,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: CustomColors.primary,
                    borderRadius: BorderRadius.circular(30)),
              )),
          Positioned(
              top: 1000,
              right: 430,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: CustomColors.secondary,
                    borderRadius: BorderRadius.circular(30)),
              )),
          SizedBox(
            width: maxWidth,
            child: Padding(
              padding: EdgeInsets.only(
                top: maxWidth * 0.04,
                left: maxWidth >= Breakpoints.xxlg
                    ? 0
                    : maxWidth * Constants.smallHorizontalPaddingRatio,
                right: maxWidth >= Breakpoints.xxlg
                    ? 0
                    : maxWidth * Constants.smallHorizontalPaddingRatio,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: maxWidth >= Breakpoints.lg
                        ? Alignment.center
                        : Alignment.centerLeft,
                    child: const Text('What I have done so far',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: maxWidth >= Breakpoints.lg
                        ? Alignment.center
                        : Alignment.centerLeft,
                    child: const Text('Some Of My Projects.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: maxWidth,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: maxWidth >= Breakpoints.xxlg
                            ? (maxWidth * Constants.mediumAndAboveHorizontalPaddingRatio) - 0.05 * maxWidth
                            : (maxWidth * Constants.smallHorizontalPaddingRatio) - 0.05 * maxWidth,
                      ),
                      child: Stack(
                        alignment: maxWidth >= Breakpoints.lg
                            ? Alignment.topCenter
                            : Alignment.topLeft,
                        children: [
                          Scope(builder: (context) {
                            return Padding(
                              padding: EdgeInsets.only(left: maxWidth < Breakpoints.lg ? 20 : 0),
                              child: Container(
                                width: 3,
                                height: heightOfTez.value +
                                    heightOfdisability.value +
                                    heightOfNotify.value + 
                                    heightOffacedetection.value +
                                    heightOfStreamflex.value +  
                                    200,
                                color: Colors.white,
                              ),
                            );
                          }),
                          VisibilityDetector(
                            key: const Key('tez'),
                            onVisibilityChanged: (_) {
                              heightOfTez.value =
                                  tezKey.currentContext?.size?.height ?? 0.0;
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: ExperienceBlock(
                                githubLink: 'https://github.com/prakharAKGa/Tez-News-App',
                                key: tezKey,
                                image: ImageAssets.tezNews,
                                title: 'Tez News App',
                                description: 'I developed the Tez News App, a simple yet effective mobile application designed to provide users with the latest news updates. The app fetches news from a REST API, ensuring users can stay informed with real-time information across various categories. Through this app, users can effortlessly browse through different types of news, staying updated on current events in an easy-to-navigate mobile environment.',
                          
                                multidirection: maxWidth >= Breakpoints.lg,
                                topPadding: 50,
                                playAnimation: showAndroidExperience,
                                cardAlignment: maxWidth >= Breakpoints.lg ? Alignment.topLeft : Alignment.topLeft,
                                timeTextPadding: const EdgeInsets.only(left: 250),
                              ),
                            ),
                          ),
                          VisibilityDetector(
                            key: const Key('disability'),
                            onVisibilityChanged: (_) {
                              heightOfdisability.value =
                                  disabilityKey.currentContext?.size?.height ?? 0.0;
                            },
                            child: Scope(builder: (context) {
                              return Padding(
                                padding: EdgeInsets.only(top: heightOfTez.value + 110),
                                child: ExperienceBlock(
                                  githubLink: 'https://github.com/prakharAKGa/Disability_App',
                                  key: disabilityKey,
                                  image: ImageAssets.flutter,
                                 
                                  title: 'Disability App',
                                  description: '''I developed the Disability App, a mobile application focused on accessibility for individuals with disabilities. It features real-time sign language translation and voice-to-text conversion using TensorFlow, with Gemini AI integration for enhanced functionality. The app is designed to provide a user-friendly experience for diverse accessibility needs.''',
                                  multidirection: maxWidth >= Breakpoints.lg,
                                  topPadding: heightOfTez.value + 110,
                                  playAnimation: showFlutterExperience,
                                  cardAlignment: maxWidth >= Breakpoints.lg ? Alignment.topRight : Alignment.topLeft,
                                  timeTextPadding: const EdgeInsets.only(right: 250),
                                ),
                              );
                            }),
                          ),
                                          VisibilityDetector(
                            key: const Key('notifyKey'),
                            onVisibilityChanged: (_) {
                              heightOfNotify.value =
                                  notifyKey.currentContext?.size?.height ?? 0.0;
                            },
                            child: Scope(builder: (context) {
                              return Padding(
                                padding: EdgeInsets.only(top: heightOfTez.value + heightOfdisability.value + 150),
                                child: ExperienceBlock(
                                  githubLink: 'https://github.com/prakharAKGa/Notify',
                                  key: notifyKey,
                                  image: ImageAssets.notify,
                               
                                  title: 'Notify',
                                  description: '''The college app will feature push notifications for key updates (exam forms, events, achievements) and hourly pop-up reminders for uncompleted tasks. It will also include two separate portals for students and authorities, with controlled access based on user privileges.''',
                                  multidirection: maxWidth >= Breakpoints.lg,
                                  topPadding: heightOfTez.value + heightOfdisability.value + 150,
                                  playAnimation: showFlutterExperience,
                                  cardAlignment: maxWidth >= Breakpoints.lg ? Alignment.topLeft : Alignment.topLeft ,
                                  timeTextPadding: const EdgeInsets.only(right: 250),
                                ),
                              );
                            }),
                          ),
                          VisibilityDetector(
                            key: const Key('ML'),
                            onVisibilityChanged: (_) {
                              heightOffacedetection.value =
                                  facedetectionKey.currentContext?.size?.height ?? 0.0;
                            },
                            child: Scope(builder: (context) {
                              return Padding(
                                padding: EdgeInsets.only(top: heightOfTez.value + heightOfdisability.value + heightOfNotify.value + 190),
                                child: ExperienceBlock(
                                  githubLink: 'https://github.com/prakharAKGa/Face-Detection-and-Flask-Login-Page',
                                
                                  key: facedetectionKey,
                                  image: ImageAssets.ml,
                                  title: 'Face-Detection-and-Flask-Login-Page',
                                  description: 'I developed a Flask web application that combines user authentication with face detection using the Face Recognition library. It features a secure login/signup system, and upon successful face detection, users are redirected to a personalized welcome page displaying their names.',
                                  multidirection: maxWidth >= Breakpoints.lg,
                                  topPadding: heightOfdisability.value + 150,
                                  playAnimation: showNestjsExperience,
                                  cardAlignment: maxWidth >= Breakpoints.lg ?  Alignment.topRight : Alignment.topLeft ,
                                  timeTextPadding: const EdgeInsets.only(left: 250),
                                ),
                              );
                            }),
                          ),
          
                          VisibilityDetector(
                            key: streamflexKey,
                            onVisibilityChanged: (_) {
                              heightOfStreamflex.value =
                                  streamflexKey.currentContext?.size?.height ?? 0.0; // Update Streamflex height
                            },
                            child: Scope(builder: (context) {
                              return Padding(
                                padding: EdgeInsets.only(top: heightOfTez.value + heightOfdisability.value + heightOfNotify.value + heightOffacedetection.value + 220), // Update to include all previous heights
                                child: ExperienceBlock(
                                  githubLink: 'https://github.com/prakharAKGa/STREAMFLEX_APP',
                                  key: streamflexKey,
                                  image: ImageAssets.streamflex,
                            
                                  title: 'Streamflex',
                                  description: '''
STREAMFLEX is a powerful Flutter application that enables users to upload and watch videos, interact with content through likes and comments, and manage their profiles. The app leverages Firebase for secure authentication, including phone OTP login, and uses Cloud Firestore for efficient storage and retrieval of videos. Key features include the ability for users to upload their own videos, stream and watch videos uploaded by others, and have personalized profile pages. Additionally, users can engage with videos by liking and commenting, making STREAMFLEX a dynamic platform for video sharing and interaction.''',
                                  multidirection: maxWidth >= Breakpoints.lg,
                                  topPadding: heightOfTez.value + heightOfdisability.value + heightOfNotify.value + heightOffacedetection.value + 150, // Ensure correct top padding
                                  playAnimation: showFlutterExperience,
                                  cardAlignment: maxWidth >= Breakpoints.lg ?  Alignment.topLeft : Alignment.topLeft ,
                                  timeTextPadding: const EdgeInsets.only(right: 250),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
