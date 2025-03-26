import 'package:ecommerce_application/screens/homescreen/favourites/favourites.dart';
import 'package:ecommerce_application/screens/homescreen/homepage/home_page.dart';
import 'package:ecommerce_application/screens/homescreen/profile/profile.dart';

import '../../screens/homescreen/history/order_history.dart';

class WidgetConstant {
  static var listofscreens = [
    HomePage(),
    Favourites(),
    OrderHistory(),
    Profile(),
  ];
}
