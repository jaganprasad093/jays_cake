import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';
import 'package:jays_cake/view/homepage/widgets/categories_card.dart';
import 'package:jays_cake/view/search_screen/widgets/occation_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Search",
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Container(
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
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CategoriesCard(),
              SizedBox(
                height: 20,
              ),
              OccationCard(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Trending Items",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Row(
                        children: [
                          Image.asset(MyIcons.search1),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Black forest",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: ColorConstants.primary_black
                                    .withOpacity(.5)),
                          )
                        ],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 3),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent search",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text(
                    "Clear all",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: ColorConstants.rose),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.history,
                                color: ColorConstants.primary_black
                                    .withOpacity(.3),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "cakes",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: ColorConstants.primary_black
                                        .withOpacity(.5)),
                              )
                            ],
                          ),
                          Icon(
                            Icons.close,
                            size: 18,
                            color: ColorConstants.primary_black.withOpacity(.3),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 3),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
