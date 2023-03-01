import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class TableParent extends StatelessWidget {
  final Widget child;
  const TableParent({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: Scrollbar(
        // isAlwaysShown: true,
        controller: controller,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          controller: controller,
          child: Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.white,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
