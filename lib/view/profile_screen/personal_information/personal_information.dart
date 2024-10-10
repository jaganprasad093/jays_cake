import 'package:flutter/material.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  TextEditingController firstname_controller = TextEditingController();
  TextEditingController lastname_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController current_psd_controller = TextEditingController();
  TextEditingController new_psd_controller = TextEditingController();
  TextEditingController confirm_psd_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pesonal Information",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "First Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                      CustomTextField(
                          controller: firstname_controller,
                          hintText: "Enter Name")
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
                        "Second Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                      CustomTextField(
                          controller: firstname_controller,
                          hintText: "Enter Name")
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Second Name",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            CustomTextField(
                controller: firstname_controller, hintText: "Enter Name"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Divider(),
            ),
            Text(
              "Change Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Current Password",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            CustomTextField(
                controller: firstname_controller,
                hintText: "Enter Current Password"),
            SizedBox(
              height: 20,
            ),
            Text(
              "New Password",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            CustomTextField(
                controller: firstname_controller,
                hintText: "Enter New Password"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Confrim New Password",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            CustomTextField(
                controller: firstname_controller,
                hintText: "Enter Confrim Password"),
            SizedBox(
              height: 80,
            ),
            Custombutton(
              text: "Update",
              padding: EdgeInsets.symmetric(vertical: 10),
            )
          ],
        ),
      ),
    );
  }
}
