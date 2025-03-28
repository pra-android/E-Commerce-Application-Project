import 'package:ecommerce_application/screens/homescreen/homepage/home_page.dart';
import 'package:ecommerce_application/screens/homescreen/profile/profile.dart';

import '../../screens/homescreen/cart/cart.dart';
import '../../screens/homescreen/catering/catering.dart';
import '../../screens/homescreen/homepage/meal/meal_list.dart';

class WidgetConstant {
  static var listofscreens = [
    HomePage(),
    MealList(),
    Catering(),
    Cart(),
    Profile(),
  ];
}
