import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';

class IteamCard extends StatefulWidget {
  final bool? add_bag;
  const IteamCard({super.key, this.add_bag});

  @override
  State<IteamCard> createState() => _IteamCardState();
}

class _IteamCardState extends State<IteamCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  // height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    color: ColorConstants.rose,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(ImageConstants.component1),
                    ),
                  ),
                ),
                Positioned(
                    top: 10, right: 10, child: Image.asset(MyIcons.likes))
              ],
            ),
          ),
          // SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "item name",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                // SizedBox(height: 4),
                Text(
                  "description",
                  style: TextStyle(
                    color: ColorConstants.primary_black.withOpacity(.5),
                    fontSize: 16,
                  ),
                ),
                // SizedBox(height: 8),
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
                SizedBox(height: 10),
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
                            color: ColorConstants.primary_black.withOpacity(.5),
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
                SizedBox(
                  height: 10,
                ),
                widget.add_bag == true
                    ? Column(
                        children: [
                          Custombutton(
                            text: "Add Bag",
                            padding: EdgeInsets.symmetric(vertical: 5),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
