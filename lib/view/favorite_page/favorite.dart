import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/widgets/iteam_card.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          leadingWidth: 80,
          leading: CircleAvatar(
            radius: 27,
            backgroundColor: ColorConstants.rose,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=600",
              ),
            ),
          ),
          title: Text(
            "Bag",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Image.asset(MyIcons.notification_icon),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
      body: GridView.builder(
        // physics: NeverScrollableScrollPhysics(),
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          // childAspectRatio: 1,
          crossAxisSpacing: 20,
          childAspectRatio: 0.6,
        ),
        itemBuilder: (context, index) => IteamCard(
          add_bag: true,
        ),
      ),
    );
  }
}
