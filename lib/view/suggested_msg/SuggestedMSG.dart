import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';

class Suggestedmsg extends StatelessWidget {
  const Suggestedmsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Suggested Messages",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
            itemBuilder: (context, index) => Column(
                  children: [
                    Text(
                        style: TextStyle(
                            color:
                                ColorConstants.primary_black.withOpacity(.7)),
                        "A wish for you on your birthday, whatever you ask may you receive, whatever you seek may you find, whatever youwish may it be fulfilled on your birthday and always. Happy birthday!"),
                    SizedBox(
                      height: 10,
                    ),
                    Divider()
                  ],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 5),
      ),
    );
  }
}
