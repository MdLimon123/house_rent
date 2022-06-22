import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:house_rent/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'House Rent',
          theme: ThemeData(

            backgroundColor: const Color(0xFFF5F6F6),
            primaryColor: const Color(0xFF811B83),
            textTheme: TextTheme(
              headline1: const TextStyle(color: Color(0xFF100E34),
              ),
              bodyText1: TextStyle(color: const Color(0xFF100E34).withOpacity(0.5))
            ),


          ),
          home: child,
        );
      },
      child: HomePage()
    );
  }
}


