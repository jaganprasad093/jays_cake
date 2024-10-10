import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/widgets/iteam_card.dart';

class Allitemscard extends StatefulWidget {
  const Allitemscard({super.key});

  @override
  State<Allitemscard> createState() => _AllitemscardState();
}

class _AllitemscardState extends State<Allitemscard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "All Cakes",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          "12 items available",
          style: TextStyle(color: ColorConstants.primary_black.withOpacity(.5)),
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 255,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            childAspectRatio: 0.3,
          ),
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/detail");
              },
              child: IteamCard()),
        )
      ],
    );
  }
}
