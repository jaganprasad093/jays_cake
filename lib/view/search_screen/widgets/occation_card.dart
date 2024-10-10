import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class OccationCard extends StatefulWidget {
  const OccationCard({super.key});

  @override
  State<OccationCard> createState() => _OccationCardState();
}

class _OccationCardState extends State<OccationCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Occation",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Text(
              "See all",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorConstants.rose),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Birthday",
              style: TextStyle(
                  fontSize: 17,
                  color: ColorConstants.primary_black.withOpacity(.5)),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorConstants.primary_black.withOpacity(.5),
              size: 16,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: ColorConstants.primary_black.withOpacity(.1),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Wedding",
              style: TextStyle(
                  fontSize: 17,
                  color: ColorConstants.primary_black.withOpacity(.5)),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorConstants.primary_black.withOpacity(.5),
              size: 16,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: ColorConstants.primary_black.withOpacity(.1),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Anniversary",
              style: TextStyle(
                  fontSize: 17,
                  color: ColorConstants.primary_black.withOpacity(.5)),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorConstants.primary_black.withOpacity(.5),
              size: 16,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: ColorConstants.primary_black.withOpacity(.1),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Graduation",
              style: TextStyle(
                  fontSize: 17,
                  color: ColorConstants.primary_black.withOpacity(.5)),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorConstants.primary_black.withOpacity(.5),
              size: 16,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: ColorConstants.primary_black.withOpacity(.1),
          ),
        ),
      ],
    );
  }
}
