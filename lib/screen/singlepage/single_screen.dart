import 'package:flutter/material.dart';
import 'package:single_item_furniture/constants.dart';
import 'package:single_item_furniture/screen/home/components/build_appbar.dart';
import 'package:single_item_furniture/screen/singlepage/components/body.dart';

class SinglePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }
}

