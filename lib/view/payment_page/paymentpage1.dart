import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/view/checkout/widgets/CheckoutStatusCard.dart';
import 'package:jays_cake/view/checkout/widgets/cart_total.dart';

class Paymentpage1 extends StatefulWidget {
  const Paymentpage1({super.key});

  @override
  _Paymentpage1State createState() => _Paymentpage1State();
}

class _Paymentpage1State extends State<Paymentpage1> {
  String? _selectedPaymentMethod;

  final List<Map<String, String>> paymentMethods = [
    {"name": "Apple Pay", "logo": MyIcons.applelogo},
    {"name": "Credit Card", "logo": MyIcons.card_logo},
    {"name": "PayPal", "logo": MyIcons.paypal_logo},
    {"name": "Tamara", "logo": ImageConstants.thamara},
    {"name": "Tabby", "logo": ImageConstants.tabby},
  ];

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutStatusCard(index: 2),
              SizedBox(height: 20),
              Text(
                "Payment Option",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    for (var method in paymentMethods)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedPaymentMethod = method["name"];
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: _selectedPaymentMethod == method["name"]
                                ? ColorConstants.primary_black.withOpacity(0.05)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(method["logo"]!,
                                      width: 24, height: 24),
                                  SizedBox(width: 10),
                                  Text(
                                    method["name"]!,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: ColorConstants.primary_black
                                          .withOpacity(.5),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Radio<String>(
                                value: method["name"]!,
                                groupValue: _selectedPaymentMethod,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedPaymentMethod = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CartTotal(),
              SizedBox(height: 20),
              Custombutton(
                text: "Place Order",
                onTap: () {
                  Navigator.pushNamed(context, "/payment_sucess");
                },
                padding: EdgeInsets.symmetric(vertical: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
