import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class ShowCaseView extends StatelessWidget {
  const ShowCaseView(
      {super.key,
      required this.globalKey,
      required this.title,
      required this.desc,
      required this.child});
  final GlobalKey globalKey;
  final String title, desc;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: globalKey,
      description: desc,
      title: title,
      child: child,
    );
  }
}
