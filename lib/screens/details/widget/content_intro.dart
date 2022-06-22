import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:house_rent/model/hourse.dart';

class ContentIntro extends StatelessWidget {

  final House house;

  const ContentIntro({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(house.name,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20.sp,fontWeight: FontWeight.bold ),),
          SizedBox(height: 10.h,),
          Text(house.address,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14.sp,fontWeight: FontWeight.bold )),
          SizedBox(height: 10.h,),
          Text('5000 sqft',style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14.sp,fontWeight: FontWeight.bold)),
          SizedBox(height: 5.h,),
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$4455 ',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 16, fontWeight: FontWeight.bold
                    )
                  ),
                  TextSpan(
                    text: "Per Month",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14)
                  )
                ]
              )
          )
        ],
      ),
    );
  }
}
