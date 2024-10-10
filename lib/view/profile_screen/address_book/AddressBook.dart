import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class Addressbook extends StatefulWidget {
  const Addressbook({super.key});

  @override
  State<Addressbook> createState() => _AddressbookState();
}

class _AddressbookState extends State<Addressbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Address Book",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: ColorConstants.primary_black
                                  .withOpacity(.2))),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 17),
                              ),
                              Icon(
                                Icons.edit,
                                color: ColorConstants.rose,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: ColorConstants.rose,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: ColorConstants.primary_black
                                                .withOpacity(.5)),
                                        "Jumeiah Beach, AL SafaDubai, 33962 United Arab Emirates"),
                                    Text(
                                        style: TextStyle(
                                            color: ColorConstants.primary_black
                                                .withOpacity(.5)),
                                        "Tl : 6788787890989"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 3),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/add_address");
              },
              child: DottedBorder(
                strokeWidth: 1,
                radius: Radius.circular(20),
                dashPattern: [3, 3],
                color: ColorConstants.rose,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  // height: 50,
                  // width: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    // border: Border.all(
                    //   color: ColorConstants.rose,
                    // ),
                    // borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Add address",
                      style: TextStyle(
                        color: ColorConstants.rose,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
