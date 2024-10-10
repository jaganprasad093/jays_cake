import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';

class Addaddress extends StatefulWidget {
  const Addaddress({super.key});

  @override
  State<Addaddress> createState() => _AddaddressState();
}

class _AddaddressState extends State<Addaddress> {
  TextEditingController name_controller = TextEditingController();
  final List<String> gender = [
    "India",
    "USA",
  ];
  List<String> addressTypes = ['Home', 'Office', 'Others'];
  int selectedIndex = 0;
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Address",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            CustomTextField(
                controller: name_controller, hintText: "Enter Name"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Phone Number",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            CustomTextField(
              controller: name_controller,
              hintText: "Enter number",
              prefix: Text(
                "  +91 ",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Country",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      DropdownButtonFormField<String>(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.2))),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Select Country",
                          hintStyle: TextStyle(
                            color: ColorConstants.primary_black.withOpacity(.5),
                            textBaseline: TextBaseline.alphabetic,
                            height: 2,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        value: selectedGender != null &&
                                gender.contains(selectedGender)
                            ? selectedGender
                            : null,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedGender = newValue;
                          });
                        },
                        items: gender
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        validator: (String? value) {
                          return (value == null || value.isEmpty)
                              ? 'Select gender'
                              : null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Country",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      DropdownButtonFormField<String>(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorConstants.primary_black
                                      .withOpacity(.2))),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Select Country",
                          hintStyle: TextStyle(
                            color: ColorConstants.primary_black.withOpacity(.5),
                            textBaseline: TextBaseline.alphabetic,
                            height: 2,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        value: selectedGender != null &&
                                gender.contains(selectedGender)
                            ? selectedGender
                            : null,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedGender = newValue;
                          });
                        },
                        items: gender
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        validator: (String? value) {
                          return (value == null || value.isEmpty)
                              ? 'Select gender'
                              : null;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Address",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            CustomTextField(
                controller: name_controller,
                hintText: "House no,Building name..."),
            SizedBox(
              height: 10,
            ),
            Text(
              "Area",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            CustomTextField(controller: name_controller, hintText: "Area"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Landmark(optional)",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            CustomTextField(controller: name_controller, hintText: "Landmark"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Save Address as",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: ColorConstants.primary_black.withOpacity(.4)),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 35,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black.withOpacity(.3))),
                        child: Text(
                          addressTypes[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color:
                                  ColorConstants.primary_black.withOpacity(.4)),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 3),
            ),
            SizedBox(
              height: 50,
            ),
            Custombutton(
              text: "Add Address",
              padding: EdgeInsets.symmetric(vertical: 10),
            )
          ],
        ),
      ),
    );
  }
}
