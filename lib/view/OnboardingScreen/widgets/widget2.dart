import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 450,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageConstants.onboard2))),
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Unwrap ",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: ColorConstants.primary_black),
                children: [
                  TextSpan(
                      text: "Happiness ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.rose)),
                  TextSpan(
                      text: "with \nEvery Delivery",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.primary_black))
                ]),
          ),
        ],
      ),
    );
  }
}
