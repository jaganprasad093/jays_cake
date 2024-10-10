import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class CoustomerReview extends StatelessWidget {
  const CoustomerReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Customer Review",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(10),
                  color: ColorConstants.rose.withOpacity(.05),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundImage:
                                AssetImage(ImageConstants.splashscreen1),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  height: 20,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "1 day ago",
                            style: TextStyle(
                                color: ColorConstants.primary_black
                                    .withOpacity(.4)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Me and my fiancé went here to do our cake tasting and honestly every bite was delicious! They gave us recommendations on which flavors taste good with each other which was extremely helpful.",
                        style: TextStyle(
                            fontSize: 15,
                            color:
                                ColorConstants.primary_black.withOpacity(.5)),
                      )
                    ],
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 3)
      ],
    );
  }
}
