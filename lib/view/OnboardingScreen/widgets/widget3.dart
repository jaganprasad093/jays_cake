import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class Widget3 extends StatelessWidget {
  const Widget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 400,
            width: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageConstants.onboard3))),
          ),
          SizedBox(
            height: 40,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Your ",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: ColorConstants.primary_black),
                children: [
                  TextSpan(
                      text: "Sweet ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.rose)),
                  TextSpan(
                      text: "Treat\nDestination",
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
