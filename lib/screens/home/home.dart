import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent/screens/home/widget/best_offer_house.dart';
import 'package:house_rent/screens/home/widget/categories.dart';
import 'package:house_rent/screens/home/widget/custom_appbar.dart';
import 'package:house_rent/screens/home/widget/recommended_house.dart';
import 'package:house_rent/screens/home/widget/welcome_text.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    hintText: "Search here....",
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset('assets/icons/search.svg'),
                    ),
                    contentPadding: const EdgeInsets.all(2)
                ),
              ),
            ),
            Categories(),
            RecommendedHouse(),
            BestOffer(),

          ],
        ),
      ),
     // bottomNavigationBar: CustomNavigationBar(),
    );
  }


}