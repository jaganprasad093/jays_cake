import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';

class Itemsincart extends StatelessWidget {
  final bool? ischeckout;
  final String? addwarp;
  const Itemsincart({super.key, this.ischeckout, this.addwarp});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.rose.withOpacity(.1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Image.asset(ImageConstants.onboard2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "More chocolate",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Text(
                        "1 kg",
                        style: TextStyle(
                            fontSize: 13,
                            color:
                                ColorConstants.primary_black.withOpacity(.5)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      showBottomSheet(context);
                    },
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorConstants.rose,
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: ColorConstants.primary_white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: ColorConstants.primary_black.withOpacity(.6),
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: ColorConstants.rose,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: ColorConstants.primary_white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          ischeckout == false
              ? SizedBox()
              : addwarp != null
                  ? Column(
                      children: [
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 60,
                                  child: Image.asset(
                                    ImageConstants.onboard2,
                                    fit: BoxFit.cover,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Chocolate",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "AED",
                                          style: TextStyle(
                                            color: ColorConstants.primary_black
                                                .withOpacity(.5),
                                            fontSize: 13,
                                          ),
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          "237",
                                          style: TextStyle(
                                            color: ColorConstants.primary_black,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: ColorConstants.rose,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.delete_outlined,
                                  color: ColorConstants.primary_black
                                      .withOpacity(.5),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Divider(),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  ColorConstants.rose.withOpacity(.2),
                              child: Icon(
                                Icons.card_giftcard_sharp,
                                color: ColorConstants.rose,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/addwrap");
                              },
                              child: Text(
                                "Add wrap",
                                style: TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.underline,
                                    decorationColor: ColorConstants.rose,
                                    fontWeight: FontWeight.w500,
                                    color: ColorConstants.rose),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
        ],
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Container(
                padding: EdgeInsets.all(16),
                height: 320,
                child: Column(
                  children: [
                    Text(
                      "Remove from cart?",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                  ImageConstants.cake_cat,
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "More Chocolate",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "AED",
                                      style: TextStyle(
                                        color: ColorConstants.primary_black
                                            .withOpacity(.5),
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "237",
                                      style: TextStyle(
                                        color: ColorConstants.primary_black,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: ColorConstants.rose,
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: ColorConstants.primary_white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.6),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: ColorConstants.rose,
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: ColorConstants.primary_white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Custombutton(
                      text: "Yes, Remove",
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      // height: 50,
                      // width: 200,
                      decoration: BoxDecoration(
                        color: ColorConstants.rose.withOpacity(.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: ColorConstants.rose,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
