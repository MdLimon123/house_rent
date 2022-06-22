import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIconButton extends StatelessWidget {
  final String iconUrl;
  final Color color;
  const CircleIconButton({Key? key, required this.iconUrl, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.w,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
      ),
      child: SvgPicture.asset(iconUrl),
    );
  }
}
