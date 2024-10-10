// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Function()? onTap;
  final EdgeInsetsGeometry? padding;
  const Custombutton({
    Key? key,
    required this.text,
    this.onTap,
    this.padding,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return InkWell(
          onTap: onTap,
          child: Container(
            padding: padding,
            // height: 50,
            // width: 200,
            decoration: BoxDecoration(
              color: ColorConstants.rose,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize == null ? 20 : fontSize,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
