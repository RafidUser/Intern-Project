import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:portal/getx/drawer_getx.dart';

class AppSingleton {
  BuildContext? context;
  GlobalKey<NavigatorState>? navigator;
  late Function() outerTap;

  AppSingleton(this.outerTap);

  static Future<void> init() async {
    Get.put(AppSingleton(() {}));
    Get.put(
      DrawerGet(),
      permanent: true,
    );
  }

  static BuildContext? get ctx {
    return Get.find<AppSingleton>().context;
  }

  static set ctx(BuildContext? contek) {
    Get.find<AppSingleton>().context = contek;
  }

  static GlobalKey<NavigatorState>? get navKey {
    return Get.find<AppSingleton>().navigator;
  }

  static set navKey(GlobalKey<NavigatorState>? key) {
    Get.find<AppSingleton>().navigator = key;
  }

  static Function() get tap {
    return Get.find<AppSingleton>().outerTap;
  }

  static set tap(Function() taps) {
    Get.find<AppSingleton>().outerTap = taps;
  }
}
