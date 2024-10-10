import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class FilterCard extends StatefulWidget {
  const FilterCard({super.key});

  @override
  State<FilterCard> createState() => _FilterCardState();
}

class _FilterCardState extends State<FilterCard> {
  String selectedSortOption = "Relevance";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/filter");
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Filter",
                    style: TextStyle(color: ColorConstants.rose),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.tune_rounded,
                    size: 18,
                    color: ColorConstants.rose,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstants.rose.withOpacity(.1),
                  border: Border.all(color: ColorConstants.rose)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              showSortBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sort By",
                    style: TextStyle(color: ColorConstants.rose),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 18,
                    color: ColorConstants.rose,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstants.rose.withOpacity(.1),
                  border: Border.all(color: ColorConstants.rose)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: Text(
              "chocolate",
              style: TextStyle(color: ColorConstants.rose),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstants.rose.withOpacity(.1),
                border: Border.all(color: ColorConstants.rose)),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: Text(
              "On Offer",
              style: TextStyle(color: ColorConstants.rose),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstants.rose.withOpacity(.1),
                border: Border.all(color: ColorConstants.rose)),
          )
        ],
      ),
    );
  }

  void showSortBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Container(
                padding: EdgeInsets.all(16),
                height: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        "Sort By",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Relevance",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      leading: Radio<String>(
                        activeColor: ColorConstants.rose,
                        value: "Relevance",
                        groupValue: selectedSortOption,
                        onChanged: (value) {
                          setState(() {
                            selectedSortOption = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Price (Low to High)",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      leading: Radio<String>(
                        activeColor: ColorConstants.rose,
                        value: "Price (Low to High)",
                        groupValue: selectedSortOption,
                        onChanged: (value) {
                          setState(() {
                            selectedSortOption = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Price (High to Low)",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      leading: Radio<String>(
                        value: "Price (High to Low)",
                        activeColor: ColorConstants.rose,
                        groupValue: selectedSortOption,
                        onChanged: (value) {
                          setState(() {
                            selectedSortOption = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Popularity",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      leading: Radio<String>(
                        value: "Popularity",
                        activeColor: ColorConstants.rose,
                        groupValue: selectedSortOption,
                        onChanged: (value) {
                          setState(() {
                            selectedSortOption = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Offers & Discounts",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      leading: Radio<String>(
                        activeColor: ColorConstants.rose,
                        value: "Offers & Discounts",
                        groupValue: selectedSortOption,
                        onChanged: (value) {
                          setState(() {
                            selectedSortOption = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
