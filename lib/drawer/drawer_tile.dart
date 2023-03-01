import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portal/screens/shared/expandable_drawer.dart';

class RootDrawer extends StatelessWidget {
  final List<Widget>? children;
  final Function() onTap;
  final RxBool isExpanded;
  final bool selected;
  final bool showArrow;
  final String title;
  final IconData icon;
  final RxBool isHover;

  const RootDrawer({
    Key? key,
    this.children,
    required this.isExpanded,
    required this.onTap,
    required this.title,
    required this.icon,
    this.showArrow = true,
    this.selected = false,
    required this.isHover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Column(
        children: [
          ParentDrawer(
            text: this.title,
            icon: this.icon,
            onTap: () => this.onTap(),
            isExpand: this.isExpanded.value,
            showArrow: this.showArrow,
            selected: this.selected,
            isHover: this.isHover,
          ),
          Visibility(
            visible: this.showArrow,
            child: Obx(() {
              return ExpandableWidget(
                expand: this.isExpanded.value,
                duration: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: this.children ?? [],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ChildDrawer extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function() onTap;
  final bool selected;
  final RxBool isHover;
  ChildDrawer({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.selected,
    required this.isHover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => isHover(true),
      onExit: (_) => isHover(false),
      child: Obx(() {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ButtonTheme(
            child: TextButton(
              onPressed: () => (this).onTap.call(),
              style: noColorStyle(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 4,
                ),
                child: Row(
                  children: [
                    Icon(
                      (this).icon,
                      size: 20,
                      color: (isHover.value || (this).selected)
                          ? Colors.black
                          : Color(0xffA8B5CB),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        (this).text,
                        maxLines: 1,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 13,
                          color: (isHover.value || (this).selected)
                              ? Colors.black
                              : Color(0xffA8B5CB),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class ParentDrawer extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function() onTap;
  final bool isExpand;
  final bool selected;
  final bool showArrow;
  final RxBool isHover;

  ParentDrawer({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.isExpand = false,
    this.showArrow = true,
    this.selected = false,
    required this.isHover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return MouseRegion(
        onEnter: (_) => isHover(true),
        onExit: (_) => isHover(false),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: ButtonTheme(
            child: TextButton(
              onPressed: () => (this).onTap.call(),
              style: drawerStyle(
                isHover: changeColor(
                  isHover.value,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            (this).icon,
                            size: 20,
                            color: changeColor(isHover.value)
                                ? Colors.white
                                : Color(0xffA8B5CB),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              (this).text,
                              maxLines: 1,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 13,
                                color: (isHover.value || (this).selected)
                                    ? Colors.white
                                    : Color(0xffA8B5CB),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    (this.showArrow)
                        ? Icon(
                            (this.isExpand)
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down,
                            size: 20,
                            color: changeColor(isHover.value)
                                ? Colors.white
                                : Color(0xffA8B5CB),
                          )
                        : const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  bool changeColor(bool hover) {
    return (hover || this.isExpand || this.selected);
  }
}

ButtonStyle drawerStyle({bool isHover = false}) {
  return TextButton.styleFrom(
    elevation: (isHover) ? 5 : 0,
    primary: Colors.white,
    minimumSize: const Size(88, 44),
    shape: RoundedRectangleBorder(
        side: BorderSide(
          color: (isHover) ? Color(0xFF2B6CB0) : Colors.white,
          width: 1.8,
        ),
        borderRadius: BorderRadius.circular(4)),
    backgroundColor: (isHover) ? Color(0xFF2B6CB0) : Colors.white,
  );
}

ButtonStyle noColorStyle() {
  return TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: const Size(88, 44),
    backgroundColor: Colors.white,
  );
}
