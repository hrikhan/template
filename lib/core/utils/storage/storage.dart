import 'package:get/get.dart';

/// Lightweight storage that keeps values in memory.
/// Swap the implementation with SharedPreferences or secure storage later on.
class StorageService extends GetxService {
  final Map<String, Object?> _cache = <String, Object?>{};

  Future<StorageService> init() async {
    return this;
  }

  T? read<T>(String key) => _cache[key] as T?;

  void write(String key, Object? value) {
    _cache[key] = value;
  }

  void remove(String key) => _cache.remove(key);

  void clear() => _cache.clear();
}

class StorageKeys {
  StorageKeys._();

  static const String token = 'token';
  static const String theme = 'theme';
}
