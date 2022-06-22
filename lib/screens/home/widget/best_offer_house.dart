import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:house_rent/model/hourse.dart';
import 'package:house_rent/screens/home/widget/circle_icon_button.dart';

class BestOffer extends StatelessWidget {

  final listOfOffer = House.generateBestOffer();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Best Offer",
              style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.bold),),
              Text("See All", style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14, fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 10.h,),

          ...listOfOffer.map((e) =>
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap:(){

          },
                      child: Container(
                        height: 80.h,
                        width: 158.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(e.imageUrl),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        Text(e.name,
                        style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16, fontWeight: FontWeight.bold),),
                        SizedBox(height: 5.h,),
                        Text(e.address,
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12, fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),
                const Positioned(
                  right: -0,
                    child: CircleIconButton(
                      iconUrl: 'assets/icons/heart.svg',
                      color: Colors.grey,
                    )
                )
              ],
            ),
          )
          ).toList()
        ],
      ),
    );
  }
}
