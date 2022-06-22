import 'package:flutter/material.dart';
import 'package:house_rent/model/hourse.dart';
import 'package:house_rent/screens/details/widget/about.dart';
import 'package:house_rent/screens/details/widget/content_intro.dart';
import 'package:house_rent/screens/details/widget/detailAppbar.dart';
import 'package:house_rent/screens/details/widget/house_info.dart';

class DetailPage extends StatelessWidget {

  final House house;

  const DetailPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(house: house,),
            const SizedBox(height: 20,),
            ContentIntro(house: house),
            const SizedBox(height: 20,),
            const HouseInfo(),
            const SizedBox(height: 20,),
            const About(),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () { },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  primary: Theme.of(context).primaryColor
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text("Book Now",
                  style: TextStyle(fontSize: 16, color: Colors.white),),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
