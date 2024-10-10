import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';
import 'package:jays_cake/view/register_screen/widgets/login_card.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController FirstName_Controller = TextEditingController();
  TextEditingController SecondName_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Create Account",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Enter your details to signUp",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: ColorConstants.primary_black.withOpacity(.5)),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 90,
                      width: 500,
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "First Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: ColorConstants.primary_black
                                            .withOpacity(.9)),
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                        controller: EmailController,
                                        hintText: "First Name"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Last Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: ColorConstants.primary_black
                                            .withOpacity(.9)),
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                        controller: EmailController,
                                        hintText: "Enter Name"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: ColorConstants.primary_black.withOpacity(.9)),
                    ),
                    CustomTextField(
                        controller: EmailController, hintText: "Enter Email"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: ColorConstants.primary_black.withOpacity(.9)),
                    ),
                    CustomTextField(
                      isPassword: true,
                      controller: passwordController,
                      hintText: "Enter Password",
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Custombutton(text: "Sign Up"),
                SizedBox(
                  height: 30,
                ),
                LoginCard(
                  onTap: () {
                    Navigator.pushNamed(context, "/signin");
                  },
                  text: "Login",
                  Maintext: "Already have an account?",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
