import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';

class Cakepoint extends StatelessWidget {
  const Cakepoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jay's Cake Point",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorConstants.rose.withOpacity(.1)),
              child: Row(
                children: [
                  Image.asset(MyIcons.dicount),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    color: ColorConstants.rose,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "200 Jays Cake point",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: ColorConstants.rose),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "10 point=1AED",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color:
                                ColorConstants.primary_black.withOpacity(.4)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: ColorConstants.primary_black.withOpacity(.4)),
                "Earn points every time you shop with us and watch your rewards grow! The more you gift, the more points you receive."),
            SizedBox(
              height: 20,
            ),
            Text(
              "Points Expiry",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: ColorConstants.primary_black),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorConstants.offwhite),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "100 Points expiring in next 30 days",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: ColorConstants.rose),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "*All points earned from January 2024 will be expiring within 30 days.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: ColorConstants.primary_black.withOpacity(.4)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.withOpacity(.2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Point History",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: ColorConstants.primary_black),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ListView.separated(
                    itemCount: 3,
                    separatorBuilder: (context, index) => SizedBox(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "100 points",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: ColorConstants.primary_black
                                        .withOpacity(.4)),
                              ),
                              Text(
                                "Expired on 10/11/2023",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: ColorConstants.primary_black
                                        .withOpacity(.4)),
                              )
                            ],
                          ),
                          Divider(
                            color: ColorConstants.primary_white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
