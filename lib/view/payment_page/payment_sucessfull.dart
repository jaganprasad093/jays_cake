import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';

class PaymentSucessfull extends StatelessWidget {
  const PaymentSucessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(ImageConstants.payment_sucees),
            Text(
              textAlign: TextAlign.center,
              "Order\nPlaced Successfully",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorConstants.primary_black.withOpacity(.7)),
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
            SizedBox(
              height: 100,
            ),
            Custombutton(
              text: "View Order Details",
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                // height: 50,
                // width: 200,
                decoration: BoxDecoration(
                  color: ColorConstants.rose.withOpacity(.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Back to Home",
                    style: TextStyle(
                      color: ColorConstants.rose,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
