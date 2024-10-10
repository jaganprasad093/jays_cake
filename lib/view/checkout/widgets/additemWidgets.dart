import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class AddItemWidget extends StatefulWidget {
  const AddItemWidget({super.key});

  @override
  State<AddItemWidget> createState() => _AddItemWidgetState();
}

class _AddItemWidgetState extends State<AddItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 140,
          decoration: BoxDecoration(
            color: ColorConstants.rose,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.component1),
            ),
          ),
        ),
        // SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "item name",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              // SizedBox(height: 4),
              Text(
                "Pack of 60",
                style: TextStyle(
                  color: ColorConstants.primary_black.withOpacity(.5),
                  fontSize: 14,
                ),
              ),
              // SizedBox(height: 8),

              SizedBox(height: 10),
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
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "237",
                        style: TextStyle(
                          color: ColorConstants.primary_black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: ColorConstants.rose.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(MyIcons.bag2),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "+Add",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.rose,
                    decorationColor: ColorConstants.rose,
                    fontSize: 17,
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        )
      ],
    );
  }
}
