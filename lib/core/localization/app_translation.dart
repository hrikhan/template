import 'package:get/get.dart';

import 'language/en.dart';
import 'language/zh.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => <String, Map<String, String>>{
    'en_US': enUS,
    'zh_CN': zhCN,
  };
}
