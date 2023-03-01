import 'package:get/get.dart';

class DrawerDummy {
  RxList<DrawerDummy>? list;
  String? pagetype;
  String? pagelabel;
  RxBool? selected;
  RxBool? expanded;
  RxBool? isHover;

  DrawerDummy({
    this.pagetype,
    this.pagelabel,
    this.selected,
    this.expanded,
    this.isHover,
    RxList<DrawerDummy>? list,
  }) {
    this.selected = false.obs;
    this.expanded = false.obs;
    this.isHover = false.obs;
    this.list = list ?? <DrawerDummy>[].obs;
  }

  static final dumylist = <DrawerDummy>[
    DrawerDummy(
      pagetype: "DASHBOARD",
      pagelabel: "Dashboard",
    ),
    DrawerDummy(
      pagetype: "USER_ACCESS",
      pagelabel: "User Access",
      list: [
        DrawerDummy(
          pagetype: "MENU",
          pagelabel: "Menu",
        ),
        DrawerDummy(
          pagetype: "ROLE",
          pagelabel: "Role",
        ),
        DrawerDummy(
          pagetype: "USER",
          pagelabel: "User",
        ),
      ].obs,
    ),
    DrawerDummy(
      pagetype: "MASTER",
      pagelabel: "Master",
      list: [
        DrawerDummy(
          pagetype: "SETTING_GROUP",
          pagelabel: "Setting Group",
        ),
        DrawerDummy(
          pagetype: "SETTING",
          pagelabel: "Setting",
        ),
        DrawerDummy(
          pagetype: "PARAMETER",
          pagelabel: "Parameter",
        ),
        DrawerDummy(
          pagetype: "PROVINCE",
          pagelabel: "Province",
        ),
        DrawerDummy(
          pagetype: "CITY",
          pagelabel: "City",
        ),
        DrawerDummy(
          pagetype: "COMPANY",
          pagelabel: "Company",
        ),
        DrawerDummy(
          pagetype: "SUPPORTED_OBJECT",
          pagelabel: "Supported Object",
        ),
        DrawerDummy(
          pagetype: "SUPPORT_PIC",
          pagelabel: "Support PIC",
        ),
      ].obs,
    ),
    DrawerDummy(
      pagetype: "TICKET",
      pagelabel: "Ticket",
      list: [
        DrawerDummy(
          pagetype: "REQUEST",
          pagelabel: "Request",
        ),
        DrawerDummy(
          pagetype: "VERIFICATION",
          pagelabel: "Verification",
        ),
        DrawerDummy(
          pagetype: "PROCESS",
          pagelabel: "Process",
        ),
      ].obs,
    ),
  ];
}
