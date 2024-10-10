import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/view/detail_page/widgets/ImageCard.dart';
import 'package:jays_cake/view/detail_page/widgets/coustomer_review.dart';
import 'package:jays_cake/view/detail_page/widgets/payment_card.dart';
import 'package:jays_cake/view/detail_page/widgets/weight_card.dart';
import 'package:jays_cake/view/detail_page/widgets/whatsappCard.dart';
import 'package:jays_cake/widgets/iteam_card.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Imagecard(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Text(
                          " 4.4 reviews",
                          style: TextStyle(
                              color:
                                  ColorConstants.primary_black.withOpacity(.5)),
                        ),
                      ],
                    ),
                    Text(
                      " item name",
                      style: TextStyle(
                          color: ColorConstants.primary_black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " description",
                      style: TextStyle(
                          color: ColorConstants.primary_black,
                          // fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AED",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.primary_black
                                    .withOpacity(.5),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 2),
                            Text(
                              "237",
                              style: TextStyle(
                                color: ColorConstants.rose,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          " Inc. Tax & Duties",
                          style: TextStyle(
                            color: ColorConstants.primary_black.withOpacity(.5),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(MyIcons.location),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Pickup available at Al Nashi Street 6-17 Al Wahdah Usually ready in 24 hours",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: ColorConstants.primary_black
                                    .withOpacity(.3)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorConstants.offwhite),
                      child: Row(
                        children: [
                          Image.asset(MyIcons.dicount),
                          Container(
                            // height: 40,
                            width: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "200 Jays Cake point",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: ColorConstants.rose),
                              ),
                              Text(
                                "Complete your order now to earn points",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: ColorConstants.primary_black
                                        .withOpacity(.4)),
                              ),
                              Text("View Store information",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w400,
                                    // fontSize: 12,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    WeightCard(),
                    SizedBox(
                      height: 10,
                    ),
                    Whatsappcard(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Decsription",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "sub description..........",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: ColorConstants.primary_black.withOpacity(.5)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PaymentCard(),
                    SizedBox(
                      height: 10,
                    ),
                    CoustomerReview(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Similar Products",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 256,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => IteamCard(),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 10,
                              ),
                          itemCount: 3),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
