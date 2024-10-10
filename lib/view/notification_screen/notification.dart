import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Image.asset(ImageConstants.notification_empty),
      //     Text(
      //       "No Notifications  \nfound",
      //       textAlign: TextAlign.center,
      //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      //     ),
      //     Text(
      //       "Sorry !! You don’t have anynotifications  now",
      //       // textAlign: TextAlign.center,
      //       style: TextStyle(
      //           color: ColorConstants.primary_black.withOpacity(.7),
      //           fontSize: 18),
      //     ),
      //     SizedBox(height: 100),
      //     Row()
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  color: ColorConstants.primary_black.withOpacity(.5)),
            ),
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(MyIcons.bag2),
                          radius: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Order Shipped",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "1 min ago",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: ColorConstants.primary_black
                                            .withOpacity(.5)),
                                  )
                                ],
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore. ",
                                style: TextStyle(
                                    color: ColorConstants.primary_black
                                        .withOpacity(.5),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 3),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yesterday",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: ColorConstants.primary_black.withOpacity(.5)),
                ),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Row(
                          children: [
                            CircleAvatar(
                              child: Image.asset(MyIcons.bag2),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Order Shipped",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "1 min ago",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: ColorConstants.primary_black
                                                .withOpacity(.5)),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore. ",
                                    style: TextStyle(
                                        color: ColorConstants.primary_black
                                            .withOpacity(.5),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 2),
              ],
            )
          ],
        ),
      ),
    );
  }
}
