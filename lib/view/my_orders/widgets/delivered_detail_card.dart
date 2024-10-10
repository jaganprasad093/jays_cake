import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';

class DeliveredDetailCard extends StatelessWidget {
  const DeliveredDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.grey.withOpacity(.1),
              child: Image.asset(MyIcons.bag2),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Red welwet cake",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  "Order ####5436",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: ColorConstants.primary_black.withOpacity(.5)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AED",
                      style: TextStyle(
                        color: ColorConstants.primary_black.withOpacity(.5),
                        fontSize: 13,
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
              ],
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Text(
                "Delivered",
                style: TextStyle(
                    color:
                        const Color.fromARGB(255, 22, 133, 26).withOpacity(.5)),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:
                      const Color.fromARGB(255, 132, 197, 135).withOpacity(.5)),
            ),
            Text(
              "12-2-2002",
              style: TextStyle(
                color: ColorConstants.primary_black.withOpacity(.5),
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        )
      ],
    );
  }
}
