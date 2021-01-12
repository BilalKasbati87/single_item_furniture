import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductSmallImage extends StatelessWidget {
  const ProductSmallImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductSmallImageCard(
            image: 'assets/images/1a.png',
          ),
          ProductSmallImageCard(
            image: 'assets/images/1b.png',
          ),
          ProductSmallImageCard(
            image: 'assets/images/1c.png',
          ),
          ProductSmallImageCard(
            image: 'assets/images/1d.png',
          ),
        ],
      ),
    );
  }
}

class ProductSmallImageCard extends StatelessWidget {
  const ProductSmallImageCard({
    Key key,
    this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      height: 69,
      width: 83,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        boxShadow: [
          BoxShadow(
            offset: Offset(4, 4),
            color: kShadowColor,
            blurRadius: 4,
          )
        ],
        color: kSecondaryColor,
      ),
      child: Center(
        child: Image(
          image: AssetImage(image),
          height: 44,
          width: 44,
        ),
      ),
    );
  }
}
