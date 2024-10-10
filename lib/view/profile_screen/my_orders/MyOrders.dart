import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/core/widgets/CustomButton.dart';
import 'package:jays_cake/view/my_orders/MyOrderScreen.dart';
import 'package:jays_cake/view/my_orders/widgets/delivered_detail_card.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Orders",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          indicatorColor: ColorConstants.rose,
          indicatorWeight: 3,
          labelColor: ColorConstants.rose,
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelColor: ColorConstants.primary_black.withOpacity(.5),
          controller: tabController,
          tabs: [
            Tab(text: "Ongoing"),
            Tab(text: "History"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  onGoing(),
                  history(),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget onGoing() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(ImageConstants.no_order),
        Text(
          "You haven’t made any \norders",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Text(
          "Order is empty. You can make orders from the home screen.",
          textAlign: TextAlign.center,
          style: TextStyle(color: ColorConstants.primary_black.withOpacity(.7)),
        ),
        SizedBox(height: 100),
        Custombutton(
          text: "Try Ordering",
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
      ],
    );
  }

  Widget history() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyOrderScreen(),
                              ));
                        },
                        child: DeliveredDetailCard()),
                    Divider()
                  ],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 3)
      ],
    );
  }
}
