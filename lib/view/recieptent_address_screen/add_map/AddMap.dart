import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';

class Addmap extends StatelessWidget {
  const Addmap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Map",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
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
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                // color: Colors.amber,
                height: 500,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(ImageConstants.map))),

                // child: Center(child: Image.asset(ImageConstants.map)),
              ),
              Positioned(
                  bottom: 250,
                  right: 180,
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Colors.red,
                    size: 40,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "32 Street, Business Venue Building,Dubai, United Arab Emirates",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 30,
                ),
                Custombutton(
                  text: "Submit",
                  padding: EdgeInsets.symmetric(vertical: 10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
