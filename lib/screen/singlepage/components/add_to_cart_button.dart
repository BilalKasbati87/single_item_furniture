import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 264,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kDefaultPadding * 2),
          bottomRight: Radius.circular(kDefaultPadding * 2),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(4, 4),
            color: kShadowColor,
            blurRadius: 4,
          )
        ],
        color: kButtonBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(icon: SvgPicture.asset(image)),
          SizedBox(width: kDefaultPadding / 6),
          Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                color: kWhiteTextColor,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
