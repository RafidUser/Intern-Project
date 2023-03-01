import 'package:flutter/material.dart';

class _FadedLoad extends StatelessWidget {
  final Stream<bool>? loadingStream;
  final Color? blockingColor;
  const _FadedLoad({
    Key? key,
    this.loadingStream,
    this.blockingColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: this.loadingStream,
      builder: (context, snap) {
        return AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: (snap.hasData && snap.data == true)
              ? AbsorbPointer(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: this.blockingColor,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 4.5,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: new BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: new BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: CircularProgressIndicator(
                          // color: HexColor('#1a87dd'),
                          color: Color(0xFF1a87dd),
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        );
      },
    );
  }
}

class LoadingBlock extends StatelessWidget {
  final Widget child;
  final Widget? progressWidget;
  final Color? blockingColor;
  final Stream<bool>? loadingStream;
  const LoadingBlock({
    Key? key,
    required this.child,
    this.progressWidget,
    this.blockingColor,
    this.loadingStream,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        this.child,
        _FadedLoad(
          loadingStream: this.loadingStream,
          blockingColor: this.blockingColor != null
              ? this.blockingColor
              : Colors.grey.withOpacity(
                  0.5,
                ),
          // blockingColor: (this.blockingColor != null).common(
          //   ifTrue: this.blockingColor,
          //   ifFalse: Colors.grey.withOpacity(0.5),
          // ),
        ),
      ],
    );
  }
}
