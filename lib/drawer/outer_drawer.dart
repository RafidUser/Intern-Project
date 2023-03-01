import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/drawer/drawer_tile.dart';
import 'package:portal/getx/drawer_getx.dart';

class OuterDrawer extends StatelessWidget {
  OuterDrawer({Key? key}) : super(key: key);

  final bloc = Get.find<DrawerGet>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.20,
      child: Drawer(
        elevation: 0,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Obx(() {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: bloc.drawerlist.map((e) {
                        if (e.list!.isEmpty) {
                          return RootDrawer(
                            isExpanded: false.obs,
                            showArrow: false,
                            isHover: e.isHover!,
                            selected: e.selected!.value,
                            title: e.pagelabel ?? '',
                            icon: Icons.people,
                            onTap: () {
                              print("MASOK");
                            },
                          );
                        } else {
                          return RootDrawer(
                            isExpanded: e.expanded!,
                            selected: e.selected!.value,
                            showArrow: true,
                            title: e.pagelabel!,
                            icon: Icons.people,
                            isHover: e.isHover!,
                            onTap: () => bloc.onTapDrawer(e),
                            children: e.list!.map((item) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                  left: 16,
                                ),
                                child: ChildDrawer(
                                  text: item.pagelabel ?? '',
                                  icon: Icons.keyboard_arrow_right,
                                  selected: e.selected!.value,
                                  isHover: item.isHover!,
                                  onTap: () => bloc.tapRoute(item),
                                ),
                              );
                            }).toList(),
                          );
                        }
                      }).toList(),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
