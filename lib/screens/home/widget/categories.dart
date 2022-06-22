import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:house_rent/screens/home/home_controller/home_controller.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);


 final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index)=> GestureDetector(
            onTap: (){
              _homeController.currentSelect.value = index;

            },
            child:Obx(() =>Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: _homeController.currentSelect == index ?
                          Theme.of(context).primaryColor:
                          Colors.transparent,
                          width: 3
                      )
                  )
              ),
              child: Text(
                _homeController.categoriesList[index],
                style: TextStyle(
                  color:_homeController.currentSelect == index ?
                  Theme.of(context).primaryColor:
                  Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: _homeController.currentSelect == index ? 16 : 14,
                  fontWeight: _homeController.currentSelect == index ? FontWeight.bold : FontWeight.normal,

                ),
              ),
            )),
            ),
          separatorBuilder:(context, index)=>  SizedBox(width: 10.w),
          itemCount:_homeController.categoriesList.length
      ),

    );
  }
}
