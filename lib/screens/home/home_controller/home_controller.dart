
import 'package:get/get.dart';

class HomeController extends GetxController{

  final categoriesList = [

    'Top Recommended',
    'Near You',
    'Agency Recommended',
    'Most Popular'

  ];



  var bottomBarIndex = 0.obs;

  var currentSelect = 0.obs;

  @override
  void onInit() {
    super.onInit();
    currentSelect++;

    bottomBarIndex++;

  }
}