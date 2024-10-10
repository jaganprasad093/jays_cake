import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';

class Recepitentaddress extends StatefulWidget {
  const Recepitentaddress({super.key});

  @override
  State<Recepitentaddress> createState() => _RecepitentaddressState();
}

class _RecepitentaddressState extends State<Recepitentaddress> {
  bool isSwitched = false;
  bool isChecked = false;
  TextEditingController name_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Recepitent Address",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.all(13),
                color: ColorConstants.rose.withOpacity(.1),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ask Recipient for address",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Switch(
                          activeTrackColor: Colors.green,
                          // inactiveThumbColor: Colors.white,
                          // inactiveTrackColor: Colors.grey.withOpacity(.4),
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green.withOpacity(.2),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.green.withOpacity(.7),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "We will collect address from receipient. Delivery time may be impacted if receipient is unreachable",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 11,
                                color: ColorConstants.primary_black
                                    .withOpacity(.5)),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full Name",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  CustomTextField(
                      controller: name_controller, hintText: "Enter Name"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Phone Number",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  CustomTextField(
                    controller: name_controller,
                    hintText: "Enter number",
                    prefix: Text(
                      "  +91 ",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  isSwitched
                      ? details()
                      : SizedBox(
                          height: 10,
                        ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        activeColor: Colors.grey.withOpacity(.7),
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value ?? false;
                          });
                        },
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Keep my identity secret",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            Text(
                              "We will not share any of your personal details with receipient",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.primary_black
                                      .withOpacity(.5)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Custombutton(
                text: "Add",
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget details() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/addmap");
            },
            child: Container(
              height: 100,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Add Map Location",
                      style: TextStyle(color: Colors.red.withOpacity(.8)),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Area",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          CustomTextField(controller: name_controller, hintText: "Area"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Address",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          CustomTextField(
            controller: name_controller,
            maxLines: 3,
            hintText: "Address",
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
