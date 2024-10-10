import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';

class Coupons extends StatefulWidget {
  const Coupons({super.key});

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Coupon Codes",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        controller: SearchController,
                        hintText: "Enter Coupon code"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Custombutton(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 11),
                    text: "APPLY",
                    fontSize: 13,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Stack(
                        children: [
                          Positioned(child: CircleAvatar()),
                          Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "WELCOME200",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "Lorem Ipsum is simply dummy text of printing ",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: ColorConstants.primary_black
                                                .withOpacity(.5)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(MyIcons.ticket),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Get 50% OFF",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  color: ColorConstants.rose.withOpacity(.2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "APPLY CODE",
                                        style: TextStyle(
                                          color: ColorConstants.rose,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.3),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 5)
            ],
          ),
        ),
      ),
    );
  }
}
