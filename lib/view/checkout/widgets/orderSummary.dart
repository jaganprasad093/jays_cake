import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class Ordersummary extends StatelessWidget {
  const Ordersummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      color: ColorConstants.rose.withOpacity(.1),
      child: Column(
        children: [
          Text(
            "Order Summary",
            style: TextStyle(
                color: ColorConstants.primary_black,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 60,
                              width: 40,
                              child: Image.asset(
                                ImageConstants.Occasions2,
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "More Chocolate",
                                style: TextStyle(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.7),
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Qty:1",
                                style: TextStyle(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.7),
                                  fontSize: 15,
                                ),
                              ),
                            ],
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
                              color:
                                  ColorConstants.primary_black.withOpacity(.5),
                              fontSize: 12,
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
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: 3)
        ],
      ),
    );
  }
}
