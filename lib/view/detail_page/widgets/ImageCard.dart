import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class Imagecard extends StatefulWidget {
  const Imagecard({super.key});

  @override
  State<Imagecard> createState() => _ImagecardState();
}

class _ImagecardState extends State<Imagecard> {
  PageController pageController = PageController();
  int selectedPage = 0;

  final List<String> photos = [
    ImageConstants.component1,
    ImageConstants.component2,
  ];

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        selectedPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 350,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: photos.length,
                controller: pageController,
                itemBuilder: (context, index) {
                  return Image.asset(
                    photos[index],
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(child: Text('Image not found'));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 5,
        child: PageViewDotIndicator(
          size: Size(8, 8),
          currentItem: selectedPage,
          count: photos.length,
          unselectedColor: Colors.black26,
          selectedColor: Colors.white,
          duration: const Duration(milliseconds: 200),
          boxShape: BoxShape.circle,
          onItemClicked: (index) {
            pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
      Positioned(
          top: 10,
          left: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                color: ColorConstants.primary_white,
              ),
              SizedBox(
                width: 260,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  height: 25,
                  MyIcons.share,
                ),
              ),
              Image.asset(MyIcons.favorite1)
            ],
          ))
    ]);
  }
}
