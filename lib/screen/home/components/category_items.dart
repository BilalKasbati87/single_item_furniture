import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CategoryItemCard(
              text: 'All',
              press: () {},
            ),
            CategoryItemCard(
              text: 'Chairs',
              press: () {},
            ),
            CategoryItemCard(
              text: 'Sofas',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItemCard extends StatelessWidget {
  const CategoryItemCard({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(right: kDefaultPadding/2),
        height: 36,
        width: 116,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultPadding * 2),
            topRight: Radius.circular(kDefaultPadding * 2),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              color: kShadowColor,
              blurRadius: 4,
            ),
          ],
          color: kSecondaryColor,
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
