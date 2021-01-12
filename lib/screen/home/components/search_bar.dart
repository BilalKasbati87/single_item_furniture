import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 319,
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
          )
        ],
        color: kSecondaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        child: TextField(
          decoration: InputDecoration(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            hintText: 'Search',
            hintStyle: GoogleFonts.poppins(fontSize: 18),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,

          ),
        ),
      ),
    );
  }
}
