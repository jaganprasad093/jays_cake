import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/view/cart_page/widgets/ItemsInCart.dart';
import 'package:jays_cake/view/checkout/widgets/AddOnesCard.dart';
import 'package:jays_cake/view/checkout/widgets/CheckoutStatusCard.dart';
import 'package:jays_cake/view/checkout/widgets/cart_total.dart';

class Checkout1 extends StatelessWidget {
  const Checkout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutStatusCard(
                index: -1,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your Order List",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
              ),
              Itemsincart(
                ischeckout: true,
              ),
              SizedBox(
                height: 10,
              ),
              Itemsincart(
                ischeckout: true,
                addwarp: "hgg",
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
                            "Card Message",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "There is no card message included with your order.",
                            style: TextStyle(
                                color: ColorConstants.primary_black
                                    .withOpacity(.5),
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/cardmessages");
                      },
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: const Color.fromARGB(255, 186, 145, 22),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AddOnsCard(),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: CartTotal(),
                onTap: () {
                  Navigator.pushNamed(context, "/checkout2");
                },
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
