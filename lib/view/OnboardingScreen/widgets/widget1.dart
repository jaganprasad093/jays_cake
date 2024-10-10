import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class Widget1 extends StatelessWidget {
  const Widget1({super.key});

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
                    image: AssetImage(ImageConstants.onboard1))),
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Slice of Joy,\nBouquet of ",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 28,
                    color: ColorConstants.primary_black),
                children: [
                  TextSpan(
                      text: " Love",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.rose))
                ]),
          ),
        ],
      ),
    );
  }
}
