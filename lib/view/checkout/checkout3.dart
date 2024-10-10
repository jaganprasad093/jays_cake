import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';
import 'package:jays_cake/view/checkout/widgets/CheckoutStatusCard.dart';
import 'package:jays_cake/view/checkout/widgets/DeliveryDetailCard.dart';
import 'package:jays_cake/view/checkout/widgets/cart_total.dart';
import 'package:jays_cake/view/checkout/widgets/delivery_card3.dart';
import 'package:jays_cake/view/checkout/widgets/orderSummary.dart';

class Checkout3 extends StatelessWidget {
  const Checkout3({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textcontroller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Order Summary",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckoutStatusCard(index: 1),
                SizedBox(
                  height: 20,
                ),
                DeliveryCard3(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SizedBox(
                          //   width: 0,
                          // ),
                          Text(
                            "Card Message Added",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            color: ColorConstants.rose,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        Container(
                          height: 80,
                          width: 60,
                          child: Image.asset(
                            ImageConstants.onboard2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "To             : ",
                                style: TextStyle(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.5),
                                  fontSize: 17,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Jonathan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: ColorConstants.primary_black
                                          .withOpacity(.7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Message : ",
                                  style: TextStyle(
                                    color: ColorConstants.primary_black
                                        .withOpacity(.5),
                                    fontSize: 17,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    "Lorem Ipsum is simply dummy \ntext of printing and typesetting",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.primary_black
                                          .withOpacity(.7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            RichText(
                              text: TextSpan(
                                text: "From        : ",
                                style: TextStyle(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.5),
                                  fontSize: 17,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Jonathan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstants.primary_black
                                          .withOpacity(.7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Leave a note for delivery team",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.primary_black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  controller: textcontroller,
                  hintText: "Enter...",
                  maxLines: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                      color: ColorConstants.offwhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Image.asset(ImageConstants.gift),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Apply Coupon Code",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Enter coupon code",
                              style: TextStyle(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.5),
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: const Color.fromARGB(255, 186, 145, 22),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.verified_outlined,
                      color: ColorConstants.rose,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "You have ",
                            style: TextStyle(
                              color:
                                  ColorConstants.primary_black.withOpacity(.5),
                            ),
                            children: [
                          TextSpan(
                              text: "1000 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorConstants.primary_black)),
                          TextSpan(text: " Jays Cake point")
                        ])),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                          controller: textcontroller,
                          hintText: "Loyality Points"),
                    ),
                    Custombutton(
                      text: "Redeem",
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Ordersummary(),
                SizedBox(
                  height: 20,
                ),
                CartTotal(),
                SizedBox(
                  height: 30,
                ),
                Custombutton(
                    onTap: () {
                      Navigator.pushNamed(context, "/payment1");
                    },
                    padding: EdgeInsets.symmetric(vertical: 10),
                    text: "Proceed to Payment"),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }
}
