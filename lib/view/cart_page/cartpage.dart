import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/view/cart_page/widgets/ItemsInCart.dart';
import 'package:jays_cake/view/checkout/checkout1.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: CircleAvatar(
          radius: 27,
          backgroundColor: ColorConstants.rose,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=600",
            ),
          ),
        ),
        title: Text(
          "Bag",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Image.asset(MyIcons.notification_icon),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Items in bag",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                Text(
                  "Empty cart",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: ColorConstants.rose,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.rose),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 500,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Itemsincart(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AED",
                      style: TextStyle(
                        color: ColorConstants.primary_black.withOpacity(.5),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      "677",
                      style: TextStyle(
                        color: ColorConstants.primary_black,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Custombutton(
                  onTap: () {
                    log("ontap-----works");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Checkout1(),
                        ));
                    // Navigator.pushNamed(context, "/checkout1");
                  },
                  text: "Order Now",
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
