import 'package:get/get.dart';
import 'package:portal/dummy/drawer_dummy.dart';
import 'package:portal/helper/app_route.dart';

class DrawerGet extends GetxController {
  var drawerlist = <DrawerDummy>[].obs;

  @override
  void onReady() {
    drawerlist(DrawerDummy.dumylist);
    super.onReady();
  }

  onTapDrawer(DrawerDummy obj) {
    print(obj.toString());
    var i = drawerlist.indexOf(obj);
    if (drawerlist[i].expanded!.value) {
      drawerlist[i].expanded!(false);
    } else {
      for (int x = 0; x < drawerlist.length; x++) {
        if (drawerlist[x].expanded!.value) {
          drawerlist[x].expanded!(false);
        }
      }
      drawerlist[i].expanded!(true);
      print(drawerlist[i].expanded);
    }

    drawerlist.refresh();
  }

  void tapRoute(DrawerDummy obj) {
    if (obj.pagetype == "SETTING_GROUP") {
      Get.offNamed(Pages.settinggroup);
    } else if (obj.pagetype == "SETTING") {
      Get.offNamed(Pages.setting);
    } else if (obj.pagetype == "PARAMETER") {
      Get.offNamed(Pages.parameter);
    } else if (obj.pagetype == "PROVINCE") {
      Get.offNamed(Pages.province);
    } else if (obj.pagetype == "ROLE") {
      Get.offNamed(Pages.role);
    } else if (obj.pagetype == "CITY") {
      Get.offNamed(Pages.city);
    } else if (obj.pagetype == "COMPANY") {
      Get.offNamed(Pages.company);
    } else if (obj.pagetype == "SUPPORTED_OBJECT") {
      Get.offNamed(Pages.supported_object);
    } else if (obj.pagetype == "MENU") {
      Get.offNamed(Pages.menu);
    } else if (obj.pagetype == "SUPPORT_PIC") {
      Get.offNamed(Pages.support_pic);
    } else if (obj.pagetype == "REQUEST") {
      Get.offNamed(Pages.request);
    }
  }
}
