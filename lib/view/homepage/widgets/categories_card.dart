import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class CategoriesCard extends StatefulWidget {
  const CategoriesCard({super.key});

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  List images = [
    ImageConstants.Occasions2,
    ImageConstants.Preview2,
    ImageConstants.component2,
    ImageConstants.onboard2,
    ImageConstants.onboard1,
    ImageConstants.Occasions1,
    ImageConstants.cake_cat,
  ];
  List names = [
    "Cake",
    "Fruits",
    "Flowers",
    "Perfumes",
    "Candles",
    "Plants",
    "Chocolate",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Text(
                "See all",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: ColorConstants.rose),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/categories");
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(images[index]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            names[index],
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: images.length),
          )
        ],
      ),
    );
  }
}
