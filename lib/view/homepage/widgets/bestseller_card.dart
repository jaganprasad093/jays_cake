import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/widgets/iteam_card.dart';

class BestsellerCard extends StatelessWidget {
  const BestsellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Sellers",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/listingscreen");
                },
                child: Text(
                  "See all",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: ColorConstants.rose),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 261,
            // width: 50,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => IteamCard(),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: 5),
          )
          // IteamCard()
        ],
      ),
    );
  }
}
