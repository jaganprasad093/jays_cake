import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/view/OnboardingScreen/widgets/widget1.dart';
import 'package:jays_cake/view/OnboardingScreen/widgets/widget2.dart';
import 'package:jays_cake/view/OnboardingScreen/widgets/widget3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late int selectedPage;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    selectedPage = 0;
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 556,
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  selectedPage = value;
                });
              },
              children: [
                Widget1(),
                Widget2(),
                Widget3(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: ColorConstants.primary_black.withOpacity(0.7),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: selectedPage == index ? 12 : 8,
                height: selectedPage == index ? 12 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selectedPage == index
                      ? ColorConstants.rose
                      : ColorConstants.primary_black.withOpacity(0.4),
                ),
              );
            }),
          ),
          SizedBox(
            height: 30,
          ),
          selectedPage == 2
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Custombutton(
                    text: "Let's get started",
                    onTap: () {
                      Navigator.pushNamed(context, "/signin");
                    },
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
