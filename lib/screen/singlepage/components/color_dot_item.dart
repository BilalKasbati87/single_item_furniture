import 'package:flutter/material.dart';

class ColorDotItem extends StatelessWidget {
  const ColorDotItem({
    Key key,
    this.fillColor,
    this.isSelected = false,
  }) : super(key: key);
  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 22,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Color(0XFF2F4B81) : Colors.transparent,
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(3),
        height: 14,
        width: 14,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
