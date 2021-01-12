import 'package:flutter/material.dart';

import '../../../constants.dart';


class StarIconItems extends StatelessWidget {
  const StarIconItems({
    Key key,
    this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding/5),
      child: Icon(
        Icons.star,
        color: color,
      ),
    );
  }
}
