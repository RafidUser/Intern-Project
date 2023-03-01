import 'package:flutter/material.dart';
import 'package:portal/drawer/outer_appbar.dart';
import 'package:portal/drawer/outer_drawer.dart';

class OuterScaffold extends StatelessWidget {
  final Widget child;
  OuterScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.1,
      //   leading: Image.asset("assets/images/wot.png"),
      // ),
      appBar: OuterAppbar(),
      body: Row(
        children: [
          // Drawer(
          //   width: MediaQuery.of(context).size.width / 6.5,
          //   backgroundColor: Colors.grey,
          // ),
          OuterDrawer(),
          Expanded(child: this.child),
        ],
      ),
    );
  }
}
