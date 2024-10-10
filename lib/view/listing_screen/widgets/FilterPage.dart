import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final Set<String> selectedCategories = {};
  final Set<String> selectedOccasions = {};
  final Set<String> selectedFlavours = {};
  final Set<String> selectedBundles = {};
  final Set<String> selectedColors = {};
  final Set<String> selectedPrices = {};

  void toggleSelection(Set<String> selectionSet, String item) {
    setState(() {
      if (selectionSet.contains(item)) {
        selectionSet.remove(item);
      } else {
        selectionSet.add(item);
      }
    });
  }

  Widget custom_Container(Set<String> selectionSet, String item) {
    bool isSelected = selectionSet.contains(item);
    return GestureDetector(
      onTap: () => toggleSelection(selectionSet, item),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        child: Text(
          item,
          style: TextStyle(
            color: isSelected ? ColorConstants.rose : Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 18,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelected ? ColorConstants.rose : Colors.transparent),
          color: isSelected
              ? ColorConstants.rose.withOpacity(0.2)
              : Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Filters",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedCategories, "Cake"),
                  SizedBox(width: 20),
                  custom_Container(selectedCategories, "Accessories"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedCategories, "Flower"),
                  SizedBox(width: 20),
                  custom_Container(selectedCategories, "Perfume"),
                  SizedBox(width: 20),
                  Text(
                    "View More",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.rose,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Occasions",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedOccasions, "Happy Birthday"),
                  SizedBox(width: 10),
                  custom_Container(selectedOccasions, "Anniversary"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedOccasions, "Graduation"),
                  SizedBox(width: 10),
                  custom_Container(selectedOccasions, "Wedding"),
                  SizedBox(width: 20),
                  Text(
                    "View More",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.rose,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Flavours",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedFlavours, "Vanilla"),
                  SizedBox(width: 20),
                  custom_Container(selectedFlavours, "Red Velvet"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedFlavours, "White Forest"),
                  SizedBox(width: 10),
                  custom_Container(selectedFlavours, "Chocolate"),
                  SizedBox(width: 20),
                  Text(
                    "View More",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.rose,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Bundles",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedBundles, "Cakes"),
                  SizedBox(width: 20),
                  custom_Container(selectedBundles, "Flowers"),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Colors",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedColors, "White"),
                  SizedBox(width: 20),
                  custom_Container(selectedColors, "Red"),
                  SizedBox(width: 20),
                  custom_Container(selectedColors, "Pink"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedColors, "Orange"),
                  SizedBox(width: 20),
                  Text(
                    "View More",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.rose,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Price",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedPrices, "Under 250 AED"),
                  SizedBox(width: 10),
                  custom_Container(selectedPrices, "250 AED-500 AED"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  custom_Container(selectedPrices, "500 AED - 750 AED"),
                  SizedBox(width: 10),
                  custom_Container(selectedPrices, "Over 750 AED"),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "View More",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.rose,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstants.rose,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "CLEAR ALL",
                        style: TextStyle(
                          color: ColorConstants.rose,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Custombutton(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    text: "APPLY FILTER",
                    fontSize: 18,
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
