import 'package:flutter/material.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/view/checkout/widgets/CheckoutStatusCard.dart';
import 'package:jays_cake/view/checkout/widgets/DeliveryDetailCard.dart';

class Checkout2 extends StatelessWidget {
  const Checkout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckoutStatusCard(index: 0),
            SizedBox(
              height: 20,
            ),
            Deliverydetailcard(),
            SizedBox(
              height: 100,
            ),
            Custombutton(
              text: "Continue",
              onTap: () {
                Navigator.pushNamed(context, "/checkout3");
              },
              padding: EdgeInsets.symmetric(vertical: 10),
            )
          ],
        ),
      ),
    );
  }
}
