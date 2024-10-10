import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class CheckoutStatusCard extends StatelessWidget {
  final int index;

  const CheckoutStatusCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<String> checkout = [
      "Wraps & Add-ons",
      "Address",
      "  Order Summary",
      "     Payment"
    ];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIcon(0),
              buildConnector(),
              buildIcon(1),
              buildConnector(),
              buildIcon(2),
              buildConnector(),
              buildIcon(3),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(checkout.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  checkout[index],
                  style: TextStyle(
                      color: ColorConstants.primary_black.withOpacity(.4),
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget buildIcon(int position) {
    bool isChecked = index >= position;

    return Icon(
      isChecked ? Icons.check_circle_rounded : Icons.adjust_outlined,
      color: ColorConstants.rose,
    );
  }

  Widget buildConnector() {
    return Container(
      height: 2,
      width: 70,
      color: ColorConstants.rose,
    );
  }
}
