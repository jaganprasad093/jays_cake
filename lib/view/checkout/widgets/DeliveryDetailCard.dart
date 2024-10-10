import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class Deliverydetailcard extends StatelessWidget {
  const Deliverydetailcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Delivery Address",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          color: ColorConstants.rose.withOpacity(.2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Address",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                    Text(
                      "3006, saeed tower 1 Sheikh Zayed Road, Dubai, UAE",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: ColorConstants.primary_black.withOpacity(.5)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.edit,
                  color: ColorConstants.rose,
                  // size: 25,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: ColorConstants.rose.withOpacity(.1),
              child: Image.asset(MyIcons.bag2),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Want to order for someone else?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: ColorConstants.primary_black.withOpacity(.8)),
                ),
                Text(
                  "Surprise your friends or loved ones.",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: ColorConstants.primary_black.withOpacity(.5)),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Add Address",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorConstants.rose,
                  fontSize: 16,
                  color: ColorConstants.rose),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Delivery Time",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: ColorConstants.rose.withOpacity(.2),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: ColorConstants.rose.withOpacity(.9),
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 1,
                      height: 50,
                      color: ColorConstants.rose,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color:
                                ColorConstants.primary_black.withOpacity(.6)),
                      ),
                      Text(
                        "14/6/2076",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: ColorConstants.primary_black),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: ColorConstants.rose.withOpacity(.2),
              child: Row(
                children: [
                  Icon(
                    Icons.edit_calendar_outlined,
                    color: ColorConstants.rose.withOpacity(.9),
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 1,
                      height: 50,
                      color: ColorConstants.rose,
                    ),
                  ),
                  Text(
                    "Schedule",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: ColorConstants.primary_black.withOpacity(.6)),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Image.asset(ImageConstants.truck),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery Time",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Your gift will be delivered anytime in between the selected time slot",
                      style: TextStyle(
                          color: ColorConstants.primary_black.withOpacity(.5),
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ],
    );
  }
}
