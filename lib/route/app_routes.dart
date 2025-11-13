import 'package:get/get.dart';

import '../features/home/home.dart';

class AppRoutes {
  AppRoutes._();
  //names
  static const String home = '/';

  //  routes
  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<void>(name: home, page: () => const HomeView()),
  ];
}
