import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Observable extends StatelessWidget {
  final Widget child;
  const Observable({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => this.child);
  }
}
