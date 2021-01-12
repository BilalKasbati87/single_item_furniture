import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:single_item_furniture/constants.dart';
import 'package:single_item_furniture/screen/home/components/body.dart';

import 'components/build_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }
}
