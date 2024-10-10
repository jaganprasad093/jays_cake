import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';
import 'package:jays_cake/view/register_screen/widgets/login_card.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                  "Sign In",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Hi! Welcome back, you’ve been missed",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: ColorConstants.primary_black.withOpacity(.5)),
                ),
                SizedBox(
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: ColorConstants.primary_black.withOpacity(.5),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Custombutton(
                  text: "Sign In",
                  onTap: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                LoginCard(
                  onTap: () {
                    Navigator.pushNamed(context, "/register");
                  },
                  text: "Register",
                  Maintext: "Don’t have an account ?",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
