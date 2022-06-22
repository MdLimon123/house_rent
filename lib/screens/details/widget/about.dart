import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About",
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 10.h,),
          Text('Enum veniam dolor sint ipsum culpa magna dolor incididunt laborum excepteu...',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),)
        ],
      ),
    );
  }
}
