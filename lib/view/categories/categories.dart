import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  TextEditingController SearchController = TextEditingController();
  List images = [
    ImageConstants.candle_cat,
    ImageConstants.gift_cat,
    ImageConstants.plant_cat,
    ImageConstants.flower_cat,
    ImageConstants.perfume_cat,
    ImageConstants.cake_cat,
  ];
  List names = [
    "Candles",
    "Accessories",
    "Plants",
    "Flowers",
    "Perfumes",
    "Cakes"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Image.asset(MyIcons.bag2),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CustomTextField(
              //     controller: SearchController, hintText: "Search Category"),
              TextFormField(
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                  hintText: "Search Category",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.primary_black.withOpacity(.4)),
                  prefixIcon: Image.asset(MyIcons.search1),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: ColorConstants.rose.withOpacity(.5),
                      )),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: ColorConstants.rose,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "All Categories",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    // childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) => Column(
                        children: [
                          Image.asset(images[index]),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            names[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
