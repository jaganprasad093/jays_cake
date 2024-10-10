import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/color_constants.dart';
import 'package:jays_cake/core/constants/icons.dart';
import 'package:jays_cake/view/cart_page/cartpage.dart';
import 'package:jays_cake/view/favorite_page/favorite.dart';
import 'package:jays_cake/view/homepage/homescreen.dart';
import 'package:jays_cake/view/profile_screen/ProfileScreen.dart';
import 'package:jays_cake/view/search_screen/search_screen.dart';

class BottomNavigation extends StatefulWidget {
  final int initialIndex;
  const BottomNavigation({super.key, required this.initialIndex});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    init();
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  init() async {
    setState(() {});
  }

  List screenlist = [
    Homescreen(),
    SearchScreen(),
    Favorite(),
    Cartpage(),
    Profilescreen()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenlist[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          fixedColor: ColorConstants.rose,
          unselectedItemColor: Colors.grey.withOpacity(.5),

          // iconSize: 10,
          showUnselectedLabels: true,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  MyIcons.home2,
                ),
                icon: Image.asset(
                  MyIcons.home1,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              label: "Search",
              activeIcon: Image.asset(MyIcons.search2),
              icon: Image.asset(MyIcons.search1),
            ),
            BottomNavigationBarItem(
                activeIcon: Image.asset(MyIcons.heart2),
                icon: Image.asset(MyIcons.heart1),
                label: "Favorite"),
            BottomNavigationBarItem(
                activeIcon: Image.asset(MyIcons.bag2),
                icon: Stack(children: [
                  Image.asset(MyIcons.bag1),
                ]),
                label: "Bag"),
            BottomNavigationBarItem(
                activeIcon: Image.asset(MyIcons.profile2),
                icon: Image.asset(MyIcons.profile1),
                label: "Profile"),
          ]),
    );
  }
}
