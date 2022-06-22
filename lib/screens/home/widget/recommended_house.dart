import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:house_rent/model/hourse.dart';
import 'package:house_rent/screens/details/detail.dart';
import 'package:house_rent/screens/home/widget/circle_icon_button.dart';

class RecommendedHouse extends StatelessWidget {

  final recommended = House.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 340.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index)=> GestureDetector(
            onTap: (){
              Get.to(DetailPage(house: recommended[index]));
            },
            child: Container(
             // height: 300.h,
              width: 230.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:AssetImage(recommended[index].imageUrl),
                        fit: BoxFit.cover
                      )
                    ),
                  ),

                  const Positioned(
                    top: 15,
                      right: 15,
                      child:CircleIconButton(
                          iconUrl: 'assets/icons/mark.svg',
                          color: Color(0xFFFA5019)
                      )
                  ),
                  Positioned(
                    left: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white38
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(recommended[index].name, style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.bold),),
                                SizedBox(height: 5.h,),
                                Text(recommended[index].address, style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12, fontWeight: FontWeight.bold))
                              ],
                            ),
                            const CircleIconButton(
                                iconUrl: 'assets/icons/heart.svg',
                                color: Color(0xFFFA5019)
                            )
                          ],
                        ),
                      )
                  )
                ],
              )
            ),
          ),
          separatorBuilder:(context, index)=> SizedBox(width: 20.w,) ,
          itemCount: recommended.length
      ),
    );
  }
}
