import 'package:flutter/material.dart';
import 'package:pr/config/colors.dart';

class ArrowButton extends StatelessWidget {
  final EdgeInsets margin;
  final Widget icon;
  // ignore: use_key_in_widget_constructors
  const ArrowButton({required this.margin, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.circular(15),
            boxShadow: AppColors.neumorpShadow),
        alignment: Alignment.center,
        child: icon,
      ),
    );
  }
}
