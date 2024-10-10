import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/widgets/horizontal_card.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Arrivals",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Text(
                "See all",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: ColorConstants.rose),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          HorizontalCard(
              photo: ImageConstants.Occasions1,
              price: 654,
              course_name: "course name",
              description: "description",
              index: 0,
              courseID: 654,
              rating: 3276)
        ],
      ),
    );
  }
}
