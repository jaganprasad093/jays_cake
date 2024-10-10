import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class Mypeople extends StatelessWidget {
  const Mypeople({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My People",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.separated(
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color:
                                ColorConstants.primary_black.withOpacity(.2))),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage(ImageConstants.component2),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: ColorConstants.rose,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: ColorConstants
                                                    .primary_black
                                                    .withOpacity(.5)),
                                            "Jumeiah Beach, AL SafaDubai, 33962 United Arab Emirates"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        color: ColorConstants.rose,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                          style: TextStyle(
                                              color: ColorConstants
                                                  .primary_black
                                                  .withOpacity(.5)),
                                          "6788787890989"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: Text(
                                "Delivered",
                                style: TextStyle(
                                    color: ColorConstants.rose,
                                    fontWeight: FontWeight.w500),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.withOpacity(.2)),
                            ),
                            Icon(
                              Icons.more_vert_outlined,
                              color:
                                  ColorConstants.primary_black.withOpacity(.5),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: 3),
        ));
  }
}
