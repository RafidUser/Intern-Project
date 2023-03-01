import 'package:flutter/material.dart';

class OuterAppbar extends StatelessWidget implements PreferredSizeWidget {
  const OuterAppbar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight + 24),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
                left: 20,
                top: 20,
              ),
              child: Image.asset("assets/images/wot.png"),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.notifications,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/gambar.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                          top: 25,
                          right: 35,
                        ),
                        child: Text("Keanu Reeves"),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        child: Text(
                          "admin",
                          style: TextStyle(
                            color: Color(
                              0XFF5A5C60,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        // if (ModalRoute.of(Get.context!)?.isCurrent != true)
        //   Container(
        //     height: kToolbarHeight + 24,
        //     width: MediaQuery.of(context).size.width,
        //     color: Colors.grey.withOpacity(0.5),
        //   ),
      ],
    );
  }
}
