import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(.5))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pay with",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.primary_black,
                          fontSize: 16),
                    ),
                    Image.asset(ImageConstants.payment_icon)
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(.5))),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(ImageConstants.tabby),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      width: 1,
                      color: Colors.grey.withOpacity(.5),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Split into 3 payments using Tabby",
                        style: TextStyle(
                            color:
                                ColorConstants.primary_black.withOpacity(.5)),
                      ),
                      Text(
                        "view more",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: ColorConstants.primary_black),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(ImageConstants.thamara),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      width: 1,
                      color: Colors.grey.withOpacity(.5),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Split into 3 payments using Tabby",
                        style: TextStyle(
                            color:
                                ColorConstants.primary_black.withOpacity(.5)),
                      ),
                      Text(
                        "view more",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: ColorConstants.primary_black),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
