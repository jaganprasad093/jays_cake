import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';

class CardMessages extends StatefulWidget {
  const CardMessages({super.key});

  @override
  State<CardMessages> createState() => _CardMessagesState();
}

class _CardMessagesState extends State<CardMessages> {
  TextEditingController textEditingController = TextEditingController();
  List images = [
    // ImageConstants.frame1,
    ImageConstants.frame2,
    ImageConstants.frame3,
    ImageConstants.frame4,
    ImageConstants.frame5,
    ImageConstants.frame6,
  ];
  bool? selectedone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Card Messages",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text(
                "Cards",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                // child: Image.asset(images[0]),
                height: 230,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                      ImageConstants.frame1,
                    )),
                    color: ColorConstants.rose.withOpacity(.8),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 163,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color:
                                ColorConstants.primary_black.withOpacity(.2))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          // child: Image.asset(
                          //   images[index],
                          //   fit: BoxFit.cover,
                          // ),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              image: DecorationImage(
                                image: AssetImage(
                                  images[index],
                                ),
                                // fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                "Jay’s Card",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "AED",
                                    style: TextStyle(
                                      color: ColorConstants.primary_black
                                          .withOpacity(.5),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    "237",
                                    style: TextStyle(
                                      color: ColorConstants.primary_black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemCount: images.length,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your message",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    TextField(
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                          hintText: "   To",
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(.5))),
                    ),
                    TextField(
                      maxLines: 3,
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Type your card message here",
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(.5))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/suggested");
                          },
                          child: Text(
                            "Try our suggested messages,",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor: ColorConstants.rose,
                                color: ColorConstants.rose),
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "From (optional)",
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(.5))),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Share Your Feelings With",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.link_sharp,
                        color: ColorConstants.rose,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Paste a link to a song or video",
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(.5))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      showAlertDialog();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      // height: 50,
                      // width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.rose),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Preview",
                          style: TextStyle(
                            color: ColorConstants.rose,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Custombutton(
                    text: "Confrim",
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(
                height: 50,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }

  String currentImage = ImageConstants.Preview1;
  void showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    // fit: BoxFit.cover,
                    image: AssetImage(currentImage))),
            height: 200,
            // child: Image.asset(ImageConstants.Preview1),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      currentImage = ImageConstants.Preview2;
                    });
                    Navigator.of(context).pop();
                    showAlertDialog();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    // height: 50,
                    // width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: currentImage == ImageConstants.Preview2
                              ? Colors.transparent
                              : ColorConstants.rose),
                      color: currentImage == ImageConstants.Preview2
                          ? ColorConstants.rose
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Back side",
                        style: TextStyle(
                          color: currentImage == ImageConstants.Preview2
                              ? Colors.white
                              : ColorConstants.rose,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentImage = ImageConstants.Preview1;
                    });
                    Navigator.of(context).pop();
                    showAlertDialog();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    // height: 50,
                    // width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: currentImage == ImageConstants.Preview1
                            ? Colors.transparent
                            : ColorConstants.rose,
                      ),
                      color: currentImage == ImageConstants.Preview1
                          ? ColorConstants.rose
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Front side",
                        style: TextStyle(
                          color: currentImage == ImageConstants.Preview1
                              ? Colors.white
                              : ColorConstants.rose,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
