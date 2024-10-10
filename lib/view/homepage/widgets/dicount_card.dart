import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class DicountCard extends StatefulWidget {
  const DicountCard({super.key});

  @override
  State<DicountCard> createState() => _DicountCardState();
}

class _DicountCardState extends State<DicountCard> {
  final List discountOffers = [
    {
      "text": "Claim your \n30% discount now!",
      "image": ImageConstants.flower,
    },
    {
      "text": "Celebrate your Love\nwith JAY’S Cake ",
      "image": ImageConstants.cake_cat,
    },
    {
      "text": "Enjoy a 15% \ndiscount on pastries!",
      "image": ImageConstants.flower_cat,
    },
  ];

  late int selectedPage = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            itemCount: discountOffers.length,
            itemBuilder: (context, index) {
              return customcard(discountOffers[index]["text"]!,
                  discountOffers[index]["image"]!);
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(discountOffers.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: selectedPage == index ? 10 : 7,
              height: selectedPage == index ? 10 : 7,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedPage == index
                    ? ColorConstants.rose
                    : ColorConstants.primary_black.withOpacity(0.4),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget customcard(final String text, String image) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            ColorConstants.rose,
            const Color(0xffFFD0D6),
          ],
          stops: const [0.0, 1.0],
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
          tileMode: TileMode.repeated,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.primary_white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.primary_white),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.primary_white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Image.asset(image),
        ],
      ),
    );
  }
}
