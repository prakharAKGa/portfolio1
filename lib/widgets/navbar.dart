import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:prakhar_portfolio/utils/breakpoints.dart';
import 'package:prakhar_portfolio/utils/colors.dart';
import 'package:prakhar_portfolio/utils/image.dart';
import 'package:prakhar_portfolio/widgets/link_butt.dart';
import 'package:prakhar_portfolio/widgets/logo.dart';
import 'package:prakhar_portfolio/widgets/section_button.dart';
import 'package:reactable/reactable.dart';
import 'package:url_launcher/url_launcher.dart';

class Navbar extends StatefulWidget {
  const Navbar(
      {super.key,
      required this.showNavbarLineAndShowFloatingButton,
      required this.homeKey,
      required this.overviewKey,
      required this.experienceKey,
      required this.projectsKey,
      required this.contactKey});

  final Reactable<bool> showNavbarLineAndShowFloatingButton;
  final GlobalKey homeKey;
  final GlobalKey overviewKey;
  final GlobalKey experienceKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final Reactable<bool> homeIsHover = false.asReactable;
  final Reactable<bool> overviewIsHover = false.asReactable;
  final Reactable<bool> experienceIsHover = false.asReactable;
  final Reactable<bool> projectsIsHover = false.asReactable;
  final Reactable<bool> contactIsHover = false.asReactable;
  final Reactable<bool> showDropdownNavbar = false.asReactable;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      if (maxWidth >= Breakpoints.xxlg) {
        return NavbarOnXLGOrLarger(
            maxWidth: maxWidth,
            homeIsHover: homeIsHover,
            overviewIsHover: overviewIsHover,
            experienceIsHover: experienceIsHover,
            projectsIsHover: projectsIsHover,
            contactIsHover: contactIsHover,
            showNavbarLineAndShowFloatingButton:
                widget.showNavbarLineAndShowFloatingButton,
            homeKey: widget.homeKey,
            overviewKey: widget.overviewKey,
            experienceKey: widget.experienceKey,
            projectsKey: widget.projectsKey,
            contactKey: widget.contactKey);
      } else {
        return NavbarOnLessThanXLG(
            maxWidth: maxWidth,
            showDropdownNavbar: showDropdownNavbar,
            homeKey: widget.homeKey,
            overviewKey: widget.overviewKey,
            experienceKey: widget.experienceKey,
            projectsKey: widget.projectsKey,
            contactKey: widget.contactKey);
      }
    });
  }
}

class NavbarOnXLGOrLarger extends StatelessWidget {
  const NavbarOnXLGOrLarger({
    super.key,
    required this.maxWidth,
    required this.homeIsHover,
    required this.overviewIsHover,
    required this.experienceIsHover,
    required this.projectsIsHover,
    required this.contactIsHover,
    required this.showNavbarLineAndShowFloatingButton,
    required this.homeKey,
    required this.overviewKey,
    required this.experienceKey,
    required this.projectsKey,
    required this.contactKey,
  });

  final double maxWidth;
  final Reactable<bool> homeIsHover;
  final Reactable<bool> overviewIsHover;
  final Reactable<bool> experienceIsHover;
  final Reactable<bool> projectsIsHover;
  final Reactable<bool> contactIsHover;
  final Reactable<bool> showNavbarLineAndShowFloatingButton;
  final GlobalKey homeKey;
  final GlobalKey overviewKey;
  final GlobalKey experienceKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: maxWidth,
            height: 130,
            color: CustomColors.darkBackground,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 50),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Logo(
                        homeKey: homeKey,
                      ),
                      Row(
                        children: [
                          LinkButton(
                            icon: ImageAssets.youtube,
                            text: 'Youtube',
                            onPressed: () async {
                              await launchUrl(Uri.parse(
                                  'https://www.youtube.com/c/PianowithPrakhar'));
                            },
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: LinkButton(
                              icon: ImageAssets.github,
                              text: 'Github',
                              onPressed: () async {
                                await launchUrl(Uri.parse(
                                    'https://github.com/prakharAKGa'));
                              },
                            ),
                          ),
                          LinkButton(
                            icon: ImageAssets.linkedin,
                            text: 'LinkedIn',
                            onPressed: () async {
                              await launchUrl(Uri(
                                  path:
                                      'https://www.linkedin.com/in/prakharsrivastava1007'));
                            },
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SectionButton(
                        text: 'Home',
                        onPressed: () {
                          Scrollable.ensureVisible(homeKey.currentContext!,
                              duration: 0.5.seconds, curve: Curves.easeIn);
                        },
                        isHover: homeIsHover,
                        lineWidth: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: SectionButton(
                          text: 'Overview',
                          onPressed: () {
                            Scrollable.ensureVisible(
                                overviewKey.currentContext!,
                                duration: 1.seconds,
                                curve: Curves.easeIn);
                          },
                          isHover: overviewIsHover,
                          lineWidth: 55,
                        ),
                      ),
                      SectionButton(
                        text: 'Projects',
                        onPressed: () {
                          Scrollable.ensureVisible(
                              experienceKey.currentContext!,
                              duration: 1.5.seconds,
                              curve: Curves.easeIn);
                        },
                        isHover: experienceIsHover,
                        lineWidth: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: SectionButton(
                          text: 'Resume',
                          onPressed: () async {
                            await launchUrl(Uri.parse(
                                'https://drive.google.com/file/d/1qZLt3xO2rpgb3VMvZNc3wKDrRjBsEdxg/view?usp=drive_link'));
                          },
                          isHover: projectsIsHover,
                          lineWidth: 50,
                        ),
                      ),
                      SectionButton(
                        text: 'Contact',
                        onPressed: () {
                          Scrollable.ensureVisible(contactKey.currentContext!,
                              duration: 2.5.seconds, curve: Curves.easeIn);
                        },
                        isHover: contactIsHover,
                        lineWidth: 50,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Scope(builder: (context) {
            return showNavbarLineAndShowFloatingButton.value
                ? Container(
                    width: maxWidth,
                    height: 2,
                    decoration: const BoxDecoration(
                        color: CustomColors.primary,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 8,
                              color: CustomColors.primary)
                        ]),
                  ).animate().scaleX()
                : const SizedBox.shrink();
          })
        ],
      ),
    );
  }
}

class NavbarOnLessThanXLG extends StatelessWidget {
  const NavbarOnLessThanXLG({
    super.key,
    required this.maxWidth,
    required this.showDropdownNavbar,
    required this.homeKey,
    required this.overviewKey,
    required this.experienceKey,
    required this.projectsKey,
    required this.contactKey,
  });

  final double maxWidth;
  final Reactable<bool> showDropdownNavbar;
  final GlobalKey homeKey;
  final GlobalKey overviewKey;
  final GlobalKey experienceKey;
  final GlobalKey projectsKey;
  final GlobalKey contactKey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Scope(builder: (context) {
              return SizedBox(
                width: maxWidth,
                height: maxWidth / 4,
                child: ListView(
                  children: [
                    InkWell(
                      onTap: () {
                        showDropdownNavbar.value = false;
                        Scrollable.ensureVisible(homeKey.currentContext!,
                            duration: 0.5.seconds, curve: Curves.easeIn);
                      },
                      child: Container(
                        color: CustomColors.brightBackground,
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Home',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDropdownNavbar.value = false;
                        Scrollable.ensureVisible(overviewKey.currentContext!,
                            duration: 1.seconds, curve: Curves.easeIn);
                      },
                      child: Container(
                        color: CustomColors.brightBackground,
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Overview',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDropdownNavbar.value = false;
                        Scrollable.ensureVisible(experienceKey.currentContext!,
                            duration: 1.5.seconds, curve: Curves.easeIn);
                      },
                      child: Container(
                        color: CustomColors.brightBackground,
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Projects',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        showDropdownNavbar.value = false;

                        await launchUrl(Uri.parse(
                            'https://drive.google.com/file/d/1qZLt3xO2rpgb3VMvZNc3wKDrRjBsEdxg/view?usp=drive_link'));
                      },
                      child: Container(
                        color: CustomColors.brightBackground,
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Resume',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDropdownNavbar.value = false;
                        Scrollable.ensureVisible(contactKey.currentContext!,
                            duration: 1.5.seconds, curve: Curves.easeIn);
                      },
                      child: Container(
                        color: CustomColors.brightBackground,
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Contact',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await launchUrl(
                            Uri.parse('https://github.com/prakharAKGa'));
                      },
                      child: Container(
                        color: CustomColors.brightBackground,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'Github',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(ImageAssets.github)
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await launchUrl(Uri.parse(
                            'https://www.youtube.com/c/PianowithPrakhar'));
                      },
                      child: Container(
                        color: CustomColors.brightBackground,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'Youtube',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(ImageAssets.youtube)
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/prakharsrivastava1007'));
                      },
                      child: Container(
                        color: CustomColors.brightBackground,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'LinkedIn',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(ImageAssets.linkedin)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
                  .animate(target: showDropdownNavbar.value ? 1 : 0)
                  .scaleY(alignment: Alignment.topCenter);
            }),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top:25.0),
            child: ElevatedButton(
              onPressed: () {
                showDropdownNavbar.value = !showDropdownNavbar.value;
              },
              style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(CircleBorder()),
                  backgroundColor:
                      MaterialStatePropertyAll(CustomColors.brightBackground),
                  elevation: MaterialStatePropertyAll(5)),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  Icons.list,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void scrollToWidgetByKey(GlobalKey key, ScrollController scrollController) {
  RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
  Offset position = box.localToGlobal(Offset.zero);
  double y = position.dy;
  scrollController.animateTo(y,
      duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
}
