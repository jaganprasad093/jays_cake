import 'package:flutter/material.dart';
import 'package:jays_cake/core/constants/image_contants.dart';
import 'package:jays_cake/view/BottomNavigation/bottomNavigation.dart';

class Splashscreen2 extends StatefulWidget {
  const Splashscreen2({super.key});

  @override
  State<Splashscreen2> createState() => _Splashscreen2State();
}

class _Splashscreen2State extends State<Splashscreen2> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) async {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavigation(
              initialIndex: 0,
            ),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          ImageConstants.splashscreen2,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
