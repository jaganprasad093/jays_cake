import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/view/profile_screen/jays_cake_point/CakePoint.dart';
import 'package:jays_cake/view/profile_screen/widgets/profile_cards.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(ImageConstants.component2),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 1,
                          child: CircleAvatar(
                            radius: 14,
                            child: Icon(
                              Icons.edit,
                              size: 17,
                              color: ColorConstants.primary_white,
                            ),
                            backgroundColor: ColorConstants.rose,
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      Text(
                        "email",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color:
                                ColorConstants.primary_black.withOpacity(.5)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              ProfileCards(
                onTap: () {
                  showBottomSheet(context);
                },
                data: "Support",
                icon: Icons.headphones_outlined,
              ),
              Divider(
                color: ColorConstants.primary_black.withOpacity(.1),
              ),
              ProfileCards(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => PersonalInformation(),
                  //     ));
                  Navigator.pushNamed(context, "/personal_information");
                },
                data: "Personal Information",
                icon: Icons.person_2_outlined,
              ),
              Divider(
                color: ColorConstants.primary_black.withOpacity(.1),
              ),
              ProfileCards(
                onTap: () {
                  Navigator.pushNamed(context, "/myorders");
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => MyOrderScreen(),
                  //     ));
                },
                data: "My Orders",
                icon: Icons.description_outlined,
              ),
              Divider(
                color: ColorConstants.primary_black.withOpacity(.1),
              ),
              ProfileCards(
                onTap: () {
                  Navigator.pushNamed(context, "/my_people");
                },
                data: "My people",
                icon: Icons.group,
              ),
              Divider(
                color: ColorConstants.primary_black.withOpacity(.1),
              ),
              ProfileCards(
                onTap: () {
                  Navigator.pushNamed(context, "/addressbook");
                },
                data: "Address Book",
                icon: Icons.speaker_notes_outlined,
              ),
              Divider(
                color: ColorConstants.primary_black.withOpacity(.1),
              ),
              ProfileCards(
                data: "Language",
                icon: Icons.language_outlined,
                lang: true,
              ),
              Divider(
                color: ColorConstants.primary_black.withOpacity(.1),
              ),
              ProfileCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cakepoint(),
                      ));
                },
                data: "Jay's Cake Point",
                icon: Icons.new_releases_outlined,
              ),
              Divider(
                color: ColorConstants.primary_black.withOpacity(.1),
              ),
              ProfileCards(
                onTap: () {
                  Navigator.pushNamed(context, "/faq");
                },
                data: "FAQ",
                icon: Icons.help_center_outlined,
              ),
              Divider(
                color: ColorConstants.primary_black.withOpacity(.1),
              ),
              ProfileCards(
                onTap: () {
                  Navigator.pushNamed(context, "/terms");
                },
                data: "Terms & Conditions",
                icon: Icons.description,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Container(
                padding: EdgeInsets.all(16),
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Get In Touch With Us",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    Text(
                      "Got a question or need same help? Contact us",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: ColorConstants.primary_black.withOpacity(.5)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                            height: 25, child: Image.asset(MyIcons.whatsapp)),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "WhatsApp",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(height: 25, child: Image.asset(MyIcons.call)),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Phone Call",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
