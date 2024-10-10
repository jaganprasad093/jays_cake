import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class WeightCard extends StatelessWidget {
  const WeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Weight",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.offwhite,
                    border: Border.all(
                        color: ColorConstants.primary_black.withOpacity(.3))),
                height: 40,
                width: 90,
                child: Center(child: Text("500 g")),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.offwhite,
                    border: Border.all(
                        color: ColorConstants.primary_black.withOpacity(.3))),
                height: 40,
                width: 90,
                child: Center(child: Text("500 g")),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.offwhite,
                    border: Border.all(
                        color: ColorConstants.primary_black.withOpacity(.3))),
                height: 40,
                width: 90,
                child: Center(child: Text("500 g")),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.offwhite,
                    border: Border.all(
                        color: ColorConstants.primary_black.withOpacity(.3))),
                height: 40,
                width: 90,
                child: Center(child: Text("500 g")),
              )
            ],
          ),
        )
      ],
    );
  }
}
