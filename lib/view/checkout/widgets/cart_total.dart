import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      color: Color(0xffF3F7F7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cart Total",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Item Total",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    color: ColorConstants.primary_black.withOpacity(.6)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "AED",
                    style: TextStyle(
                      color: ColorConstants.primary_black.withOpacity(.5),
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(width: 2),
                  Text(
                    "237",
                    style: TextStyle(
                      color: ColorConstants.primary_black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Divider(
              color: ColorConstants.primary_white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery Charge",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                          color: ColorConstants.primary_black.withOpacity(.6)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "Extra delivery fees for selected regions and express delivery",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color:
                                ColorConstants.primary_black.withOpacity(.4)))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "AED",
                    style: TextStyle(
                      color: ColorConstants.primary_black.withOpacity(.5),
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(width: 2),
                  Text(
                    "52",
                    style: TextStyle(
                      color: ColorConstants.primary_black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Divider(
              color: ColorConstants.primary_white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Grand Total",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: ColorConstants.primary_black.withOpacity(.6)),
                  ),
                  Text(
                    "Includes VAT of approx. AED 5*",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: ColorConstants.primary_black.withOpacity(.4)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "AED",
                    style: TextStyle(
                      color: ColorConstants.primary_black.withOpacity(.5),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 2),
                  Text(
                    "237",
                    style: TextStyle(
                      color: ColorConstants.primary_black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
