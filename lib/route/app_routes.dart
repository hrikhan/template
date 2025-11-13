import 'package:get/get.dart';

import '../features/home/home.dart';

class AppRoutes {
  AppRoutes._();

  static const String home = '/';

  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<void>(name: home, page: () => const HomeView()),
  ];
}
