import 'package:get/get.dart';

import '../views/homescreen.dart';
import '../views/layoutscreen.dart';

class Routes {
  static const String layout = '/layout';
  static const String home = '/home';

  static final getPages = [
    GetPage(
      name: layout,
      page: () => const LayoutScreen(
        title: 'Bet 2 Win',
      ),
      transition: Transition.native,
      //binding: ControllerBinding()
    ),
    GetPage(
      name: home,
      page: () => const DesktopScreen(
        title: 'Bet 2 Win',
      ),
      transition: Transition.native,
      //binding: ControllerBinding()
    ),
    GetPage(
      name: home,
      page: () => const MobileScreen(
        title: 'Bet 2 Win',
      ),
      transition: Transition.native,
      //binding: ControllerBinding()
    ),
  ];
}
