import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';
import 'package:jays_cake/view/listing_screen/widgets/FilterCard.dart';
import 'package:jays_cake/view/listing_screen/widgets/allItemsCard.dart';

class Listingscreen extends StatefulWidget {
  const Listingscreen({super.key});

  @override
  State<Listingscreen> createState() => _ListingscreenState();
}

class _ListingscreenState extends State<Listingscreen> {
  TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cakes",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Image.asset(
            MyIcons.notification_icon,
          ),
          SizedBox(
            width: 10,
          )
        ],
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
              FilterCard(),
              Allitemscard()
            ],
          ),
        ),
      ),
    );
  }
}
