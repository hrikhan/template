import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

/// Handles runtime permission requests in a single place.
class PermissionService extends GetxService {
  Future<PermissionService> init() async {
    return this;
  }

  Future<bool> ensureStoragePermission() async {
    final status = await Permission.storage.request();
    return status.isGranted;
  }

  Future<bool> ensureCameraPermission() async {
    final status = await Permission.camera.request();
    return status.isGranted;
  }
}
