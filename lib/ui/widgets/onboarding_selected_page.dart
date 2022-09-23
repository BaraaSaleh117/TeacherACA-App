import 'package:eschool_teacher/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class OnBoardingSelectedPage extends StatelessWidget {
  final bool selected;

  OnBoardingSelectedPage({this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: selected == true ? 12 : 8,
      height: selected == true ? 12 : 8,
      decoration: BoxDecoration(
          color: selected == true ? primaryColor : Color(0xFF999999),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
