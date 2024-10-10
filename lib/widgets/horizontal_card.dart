import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';

class HorizontalCard extends StatefulWidget {
  final String photo;

  final price;
  final String course_name;
  final String description;
  final int index;

  final int courseID;
  final int rating;

  const HorizontalCard({
    super.key,
    required this.photo,
    required this.price,
    required this.course_name,
    required this.description,
    required this.index,
    required this.courseID,
    required this.rating,
  });

  @override
  State<HorizontalCard> createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Container(
                  height: 120,
                  width: 150,
                  child: Image.asset(
                    widget.photo,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Icon(Icons.favorite),
                )
              ]),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "item name",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    softWrap: true,
                  ),
                  Text(
                    widget.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(),
                    softWrap: true,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_purple500_outlined,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "4.8 reviews",
                        style: TextStyle(
                          color: ColorConstants.primary_black.withOpacity(.7),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
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
                              color:
                                  ColorConstants.primary_black.withOpacity(.5),
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 2),
                          Text(
                            "237",
                            style: TextStyle(
                              color: ColorConstants.primary_black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: ColorConstants.rose.withOpacity(.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(MyIcons.bag2),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
