import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/view/checkout/widgets/additemWidgets.dart';
import 'package:jays_cake/widgets/iteam_card.dart';

class AddOnsCard extends StatelessWidget {
  const AddOnsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        color: ColorConstants.rose.withOpacity(.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add-ons",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: ColorConstants.rose),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                "Make your gift extra special with an addition",
                style: TextStyle(
                    fontSize: 15,
                    color: ColorConstants.primary_black.withOpacity(.7)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TabBar(
                indicatorColor: ColorConstants.rose,
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: ColorConstants.primary_black),
                unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: ColorConstants.primary_black.withOpacity(.5)),
                tabs: [
                  Tab(
                    child: Row(
                      children: [
                        Image.asset(ImageConstants.balloon),
                        Text("Balloons"),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Image.asset(ImageConstants.perfume),
                        Text("Perfumes"),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Image.asset(ImageConstants.flower_bouquet),
                        Text("Flowers"),
                      ],
                    ),
                  ),
                ]),
            SizedBox(
              height: 200,
              child: TabBarView(
                children: [
                  Container(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => AddItemWidget(),
                    ),
                  ),
                  // Center(child: Text("one content")),
                  Center(child: Text("Perfumes content")),
                  Center(child: Text("Flowers content")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
