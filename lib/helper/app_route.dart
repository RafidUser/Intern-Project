import 'package:get/get.dart';
import 'package:portal/screens/city/city.dart';
import 'package:portal/screens/company/company.dart';
import 'package:portal/screens/dashboard/dashboard.dart';
import 'package:portal/screens/menu/menu.dart';
import 'package:portal/screens/parameter/parameter.dart';
import 'package:portal/screens/province/province.dart';
import 'package:portal/screens/request/request.dart';
import 'package:portal/screens/role/role.dart';
import 'package:portal/screens/setting/setting.dart';
import 'package:portal/screens/setting_group/setting_group.dart';
import 'package:portal/screens/support_pic/support_pic.dart';
import 'package:portal/screens/supported_object/supported_object.dart';

class AppRoute {
  static final routes = [
    GetPage(
      name: Pages.dashboard,
      page: () => Dashboard(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    GetPage(
      name: Pages.menu,
      page: () => Menu(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    GetPage(
      name: Pages.role,
      page: () => Role(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    // GetPage(
    //   name: Pages.user,
    //   page: () => User(),
    //   binding: BindingsBuilder(() {
    //     // Get.put(ParameterGet());
    //   }),
    // ),
    GetPage(
      name: Pages.settinggroup,
      page: () => SettingGroup(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    GetPage(
      name: Pages.setting,
      page: () => Setting(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    GetPage(
      name: Pages.parameter,
      page: () => Parameter(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    GetPage(
      name: Pages.province,
      page: () => Province(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    GetPage(
      name: Pages.city,
      page: () => City(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    GetPage(
      name: Pages.company,
      page: () => Company(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    GetPage(
      name: Pages.supported_object,
      page: () => SupportedObject(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    // GetPage(
    //   name: Pages.supported_pic,
    //   page: () => SupportedPic(),
    //   binding: BindingsBuilder(() {
    //     // Get.put(ParameterGet());
    //   }),
    // ),
    // GetPage(
    //   name: Pages.company,
    //   page: () => Company(),
    //   binding: BindingsBuilder(() {
    //     // Get.put(ParameterGet());
    //   }),
    // ),
    // GetPage(
    //   name: Pages.supported_object,
    //   page: () => SettingGroup(),
    //   binding: BindingsBuilder(() {
    //     // Get.put(ParameterGet());
    //   }),
    // ),
    // GetPage(
    //   name: Pages.supported_pic,
    //   page: () => SupportedPic(),
    //   binding: BindingsBuilder(() {
    //     // Get.put(ParameterGet());
    //   }),
    // ),
    // GetPage(
    //   name: Pages.company,
    //   page: () => Company(),
    //   binding: BindingsBuilder(() {
    //     // Get.put(ParameterGet());
    //   }),
    // ),
    // GetPage(
    //   name: Pages.supported_object,
    //   page: () => SettingGroup(),
    //   binding: BindingsBuilder(() {
    //     // Get.put(ParameterGet());
    //   }),
    // ),
    GetPage(
      name: Pages.support_pic,
      page: () => SupportPic(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    GetPage(
      name: Pages.request,
      page: () => Request(),
      binding: BindingsBuilder(() {
        // Get.put(ParameterGet());
      }),
    ),
    // GetPage(
    //   name: Pages.verification,
    //   page: () => Verification(),
    //   binding: BindingsBuilder(() {
    //     // Get.put(ParameterGet());
    //   }),
    // ),
    // GetPage(
    //   name: Pages.process,
    //   page: () => Process(),
    //   binding: BindingsBuilder(() {
    //     // Get.put(ParameterGet());
    //   }),
    // ),
  ];
}

class Pages {
  static const dashboard = '/dashboard';

  static const menu = '/menu';

  static const role = '/role';

  static const user = '/user';

  static const settinggroup = '/settinggroup';

  static const setting = '/setting';

  static const parameter = '/parameter';

  static const province = '/province';

  static const city = '/city';

  static const company = '/company';

  static const supported_object = '/supportedobject';

  static const support_pic = '/supportpic';

  static const request = '/request';

  static const verification = '/verification';

  static const process = '/process';
}
