import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/drawer/outer_scaffold.dart';
import 'package:portal/helper/app_route.dart';
import 'package:portal/helper/app_singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSingleton.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      key: Get.key,
      builder: (context, child) {
        return OuterScaffold(
          child: child ?? SizedBox(),
        );
      },
      initialRoute: Pages.dashboard,
      getPages: AppRoute.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
