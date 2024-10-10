import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class DeliveryCard3 extends StatelessWidget {
  const DeliveryCard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Deliver to",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: ColorConstants.rose,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "jagan prasad",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.5), fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: ColorConstants.rose,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "6546577889",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.5), fontSize: 17),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                "Change",
                style: TextStyle(
                  color: ColorConstants.rose,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorConstants.rose,
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Deliver time",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: ColorConstants.rose,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "23/01/2023 10 AM-1 PM",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.5), fontSize: 17),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                "Change",
                style: TextStyle(
                  color: ColorConstants.rose,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorConstants.rose,
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 13),
          "*We will collect address from recipient. Delivery time may be impacted if recipient is unreachable",
        )
      ],
    );
  }
}
