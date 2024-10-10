import 'package:flutter/material.dart';
import 'package:jays_cake/view/OnboardingScreen/OnboardingScreen.dart';
import 'package:jays_cake/view/categories/categories.dart';
import 'package:jays_cake/view/checkout/checkout1.dart';
import 'package:jays_cake/view/checkout/checkout2.dart';
import 'package:jays_cake/view/checkout/checkout3.dart';
import 'package:jays_cake/view/coupons/coupons.dart';
import 'package:jays_cake/view/detail_page/detailpage.dart';
import 'package:jays_cake/view/favorite_page/favorite.dart';
import 'package:jays_cake/view/homepage/homescreen.dart';
import 'package:jays_cake/view/listing_screen/ListingScreen.dart';
import 'package:jays_cake/view/listing_screen/widgets/FilterPage.dart';
import 'package:jays_cake/view/notification_screen/notification.dart';
import 'package:jays_cake/view/occations_screen/OccationsScreen.dart';
import 'package:jays_cake/view/payment_page/payment_sucessfull.dart';
import 'package:jays_cake/view/payment_page/paymentpage1.dart';
import 'package:jays_cake/view/profile_screen/FAQ/FAQ.dart';
import 'package:jays_cake/view/profile_screen/address_book/AddAddress.dart';
import 'package:jays_cake/view/profile_screen/address_book/AddressBook.dart';
import 'package:jays_cake/view/profile_screen/jays_cake_point/CakePoint.dart';
import 'package:jays_cake/view/profile_screen/my_orders/MyOrders.dart';
import 'package:jays_cake/view/profile_screen/my_people/MyPeople.dart';
import 'package:jays_cake/view/profile_screen/personal_information/personal_information.dart';
import 'package:jays_cake/view/profile_screen/terms&conditions/TermsAndConditions.dart';
import 'package:jays_cake/view/recieptent_address_screen/RecepitentAddress.dart';
import 'package:jays_cake/view/recieptent_address_screen/add_map/AddMap.dart';
import 'package:jays_cake/view/register_screen/register.dart';
import 'package:jays_cake/view/sign_In/SignIn.dart';
import 'package:jays_cake/view/splash_screen/splashScreen2.dart';
import 'package:jays_cake/view/suggested_msg/SuggestedMSG.dart';
import 'package:jays_cake/widgets/AddWrap.dart';
import 'package:jays_cake/widgets/CardMessages.dart';

void main() {
  runApp(JaysCake());
}

class JaysCake extends StatefulWidget {
  const JaysCake({super.key});
  @override
  State<JaysCake> createState() => _JaysCakeState();
}

class _JaysCakeState extends State<JaysCake> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen2(),
      routes: {
        // '/splash1': (context) => const Splashscreen1(),
        '/splash2': (context) => const Splashscreen2(),
        '/homepage': (context) => const Homescreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/signin': (context) => const Signin(),
        '/register': (context) => const RegisterScreen(),
        '/listingscreen': (context) => const Listingscreen(),
        '/detail': (context) => const Detailpage(),
        '/checkout1': (context) => const Checkout1(),
        '/checkout2': (context) => const Checkout2(),
        '/checkout3': (context) => const Checkout3(),
        '/payment1': (context) => const Paymentpage1(),
        '/payment_sucess': (context) => const PaymentSucessfull(),
        '/personal_information': (context) => const PersonalInformation(),
        '/myorders': (context) => const MyOrders(),
        '/addressbook': (context) => const Addressbook(),
        '/add_address': (context) => const Addaddress(),
        '/my_people': (context) => const Mypeople(),
        '/cakepoint': (context) => const Cakepoint(),
        '/terms': (context) => const Termsandconditions(),
        '/faq': (context) => const Faq(),
        '/favorite': (context) => const Favorite(),
        '/notification': (context) => NotificationScreen(),
        '/categories': (context) => Categories(),
        '/occations': (context) => const OccationScreen(),
        '/recepient_address': (context) => const Recepitentaddress(),
        '/addmap': (context) => const Addmap(),
        '/suggested': (context) => const Suggestedmsg(),
        '/coupon': (context) => const Coupons(),
        '/filter': (context) => const FilterPage(),
        '/addwrap': (context) => const AddWrap(),
        '/cardmessages': (context) => const CardMessages(),
      },
    );
  }
}
