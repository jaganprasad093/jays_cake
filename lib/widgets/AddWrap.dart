import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';

class AddWrap extends StatefulWidget {
  const AddWrap({super.key});

  @override
  State<AddWrap> createState() => _AddWrapState();
}

class _AddWrapState extends State<AddWrap> {
  List images = [
    ImageConstants.wrap1,
    ImageConstants.wrap2,
    ImageConstants.wrap3,
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Gift Wrap",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 250,
              child: Image.asset(
                images[selectedIndex],
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 170,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.2))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                child: Image.asset(
                                  images[index],
                                  fit: BoxFit.cover,
                                ),
                                decoration: BoxDecoration(
                                    // image: DecorationImage(
                                    //   image: AssetImage(
                                    //     ImageConstants.wrap1,
                                    //   ),
                                    //   fit: BoxFit.cover,
                                    // ),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                              ),
                              Text(
                                "Pink & White set",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "AED",
                                    style: TextStyle(
                                      color: ColorConstants.primary_black
                                          .withOpacity(.5),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    "237",
                                    style: TextStyle(
                                      color: ColorConstants.primary_black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 3),
            ),
            SizedBox(
              height: 190,
            ),
            Custombutton(
              text: "Wrap It",
              onTap: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.symmetric(vertical: 10),
            )
          ],
        ),
      ),
    );
  }
}
