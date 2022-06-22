import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:house_rent/pages/book_mark.dart';
import 'package:house_rent/pages/notification_page.dart';
import 'package:house_rent/pages/profile_page.dart';
import 'package:house_rent/screens/home/home.dart';

import '../../../pages/search_page.dart';
import '../home_controller/nav_controller.dart';


class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({Key? key}) : super(key: key);

 final NavController _navController = Get.put(NavController());

  // final bottomBarItem = [
  //   'home',
  //   'home_search',
  //   'notification',
  //   'chat',
  //   'home_mark'
  // ];

  // final pages = [
  //   HomePage(house: null,),
  //   SearchPage(),
  //   NotificationPage(),
  //   ProfilePage(),
  //   BookMark(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      // body: Obx(() => pages[_navController.currentIndex.value]),

      bottomNavigationBar: Container(
       color: Colors.transparent,
        height: 50.0,
        child: Obx(() => DotNavigationBar(
          currentIndex: _navController.currentIndex.value,
          selectedItemColor: Color(0xFFFA5019),
          unselectedItemColor: Colors.white,

          onTap: (value){
            _navController.currentIndex.value = value;
          },
          items: [
            DotNavigationBarItem(
                icon: Icon(Icons.home)
            ),
            DotNavigationBarItem(
                icon: Icon(Icons.home)
            ),
            DotNavigationBarItem(
                icon: Icon(Icons.home)
            ),
            DotNavigationBarItem(
                icon: Icon(Icons.home)
            ),
            DotNavigationBarItem(
                icon: Icon(Icons.home)
            ),
          ],

        ),)
      ),
    );

    //   Container(
    //   padding: const EdgeInsets.symmetric(vertical: 15),
    //   margin: const EdgeInsets.only(bottom: 20),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(30.0),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey.withOpacity(0.3),
    //         spreadRadius: 1,
    //         blurRadius: 1,
    //         offset: Offset(0, 3)
    //       ),
    //     ],
    //   ),
    //   child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: bottomBarItem
    //           .map((e) => SvgPicture.asset(
    //         'assets/icons/$e.svg',
    //         color: Theme.of(context).primaryColor,
    //       ))
    //           .toList()),
    // );
  }
}
