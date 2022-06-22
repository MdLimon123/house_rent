import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:house_rent/model/hourse.dart';

class DetailAppBar extends StatelessWidget {
  final House house;
  const DetailAppBar({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      child: Stack(
        children: [
          Image.asset(house.imageUrl, fit: BoxFit.cover,
          height: double.infinity,),
          
          SafeArea(
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Container(
                        height: 20.h,
                        width: 20.w,
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                    ),
                    Container(
                      height: 20.h,
                      width: 20.w,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: Color(0xFFFA5019),
                          shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset('assets/icons/mark.svg'),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
      
    );
  }
}
