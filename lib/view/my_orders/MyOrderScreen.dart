import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/core/widgets/CustomTextformField.dart';
import 'package:jays_cake/view/checkout/widgets/CheckoutStatusCard.dart';
import 'package:jays_cake/view/checkout/widgets/cart_total.dart';
import 'package:jays_cake/view/my_orders/widgets/delivered_detail_card.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController rate_controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Orders",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutStatusCard(index: 3),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DeliveredDetailCard(),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Deliver To",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    color: Colors.grey.withOpacity(.2),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: ColorConstants.rose,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: ColorConstants.primary_black
                                            .withOpacity(.5)),
                                    "Jumeiah Beach, AL SafaDubai, 33962 United Arab Emirates"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: ColorConstants.rose,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  style: TextStyle(
                                      color: ColorConstants.primary_black
                                          .withOpacity(.5)),
                                  "6788787890989"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CartTotal(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Payment Method",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    color: Colors.grey.withOpacity(.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You Selected",
                          style: TextStyle(
                              color:
                                  ColorConstants.primary_black.withOpacity(.5)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Image.asset(MyIcons.applelogo),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Apple pay",
                              style: TextStyle(
                                  color: ColorConstants.primary_black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.all(10),
                    color: Colors.grey.withOpacity(.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.article_outlined,
                              color: ColorConstants.rose,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Download Invoice",
                              style: TextStyle(
                                  color: ColorConstants.rose,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: ColorConstants.primary_black.withOpacity(.5),
                          size: 18,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Rate The Product",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Icon(
                              Icons.star,
                              size: 40,
                              color: const Color.fromARGB(255, 255, 156, 9),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                        itemCount: 5),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "4.6",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Write Your Review",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              CustomTextField(
                controller: rate_controller,
                hintText: "Enter....",
                maxLines: 3,
              ),
              SizedBox(
                height: 30,
              ),
              Custombutton(
                text: "Submit",
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
