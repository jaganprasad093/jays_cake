import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';
import 'package:jays_cake/view/homepage/widgets/bestseller_card.dart';
import 'package:jays_cake/view/homepage/widgets/categories_card.dart';
import 'package:jays_cake/view/homepage/widgets/dicount_card.dart';
import 'package:jays_cake/view/homepage/widgets/gifts_card.dart';
import 'package:jays_cake/view/homepage/widgets/new_arrivals.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/recepient_address");
                        },
                        child: CircleAvatar(
                          radius: 27,
                          backgroundColor: ColorConstants.rose,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=600",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome!",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            "Varun",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 22),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, "/notification");
                        Navigator.pushNamed(context, "/suggested");
                      },
                      child: Image.asset(MyIcons.notification_icon))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        color: ColorConstants.rose,
                        controller: SearchController,
                        hintText: "Search Cake,Flowers..."),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/filter");
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: ColorConstants.rose,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.tune_rounded,
                        color: ColorConstants.primary_white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CategoriesCard(),
              SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/coupon");
                  },
                  child: DicountCard()),
              SizedBox(
                height: 40,
              ),
              GiftsCard(),
              SizedBox(
                height: 30,
              ),
              BestsellerCard(),
              SizedBox(
                height: 20,
              ),
              NewArrivals(),
              SizedBox(
                height: 20,
              ),
              DicountCard(),
              BestsellerCard()
            ],
          ),
        ),
      ),
    );
  }
}
