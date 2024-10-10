import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class ProfileCards extends StatelessWidget {
  final IconData icon;
  final String data;
  final bool? lang;
  final Function()? onTap;
  const ProfileCards(
      {super.key,
      required this.icon,
      required this.data,
      this.lang,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      color: ColorConstants.rose.withOpacity(.7),
                      size: 28,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      data,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
                lang == true
                    ? Container(
                        height: 30,
                        width: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Eng",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: ColorConstants.rose),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: ColorConstants.rose,
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorConstants.rose,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                      )
                    : Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorConstants.primary_black.withOpacity(.5),
                        size: 18,
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
