import 'package:get/get.dart';

import '../services/net_works_services.dart';
import '../services/permission_service.dart';
import '../utils/storage/storage.dart';

/// Registers global services up front so they can be resolved anywhere.
class CoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StorageService>(StorageService.new, fenix: true);
    Get.lazyPut<NetworkService>(NetworkService.new, fenix: true);
    Get.lazyPut<PermissionService>(PermissionService.new, fenix: true);
  }
}
