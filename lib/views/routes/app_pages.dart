import 'package:alltask/views/screens/screens.dart';

import 'package:alltask/views/views.dart';
import 'package:get/route_manager.dart';

class AllTaskPages {
  static List<GetPage> pages = [
    GetPage(
      name: AllTaskRouteNames.splashScreen,
      page: () => const SplashScreen(),
    ), 

  ];
}
