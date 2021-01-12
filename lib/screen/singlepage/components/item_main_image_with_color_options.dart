import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'color_dot_item.dart';

class ItemMainImageWithColorOptions extends StatelessWidget {
  const ItemMainImageWithColorOptions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 202,
            width: 243,
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
            child: Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/images/1a.png'),
                    height: 129,
                    width: 129,
                  ),
                ),
                Positioned(
                  top: 55,
                  right: -60,
                  child: Container(
                    height: 95,
                    width: 95,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/2a.png'),
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.4), BlendMode.dstATop),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: kDefaultPadding / 2,
                  child: Container(
                    height: 31,
                    width: 37,
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
                    child: Container(
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/favorite.svg',
                          height: 15,
                          width: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: kDefaultPadding),
          Container(
            height: 202,
            width: 45,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColorDotItem(
                    fillColor: Color(0XFF2F4B81),
                    isSelected: true,
                  ),
                  ColorDotItem(
                    fillColor: Color(0XFFBC4747),
                  ),
                  ColorDotItem(
                    fillColor: Color(0XFFFEC286),
                  ),
                  ColorDotItem(
                    fillColor: Color(0XFF47BC66),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
