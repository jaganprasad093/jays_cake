import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';

class OopsPage extends StatelessWidget {
  const OopsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(ImageConstants.oops),
          Text(
            "Whoops!",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            "No Internet connection found. Check your connection or try again later",
            // textAlign: TextAlign.center,
            style: TextStyle(
                color: ColorConstants.primary_black.withOpacity(.7),
                fontSize: 18),
          ),
          SizedBox(height: 100),
          Row()
        ],
      ),
    );
  }
}
