import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello Limon",
          style: Theme.of(context).textTheme.bodyText1!
          .copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.h,),
          Text("Find your sweet Home",
          style: Theme.of(context).textTheme.headline1!
            .copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
