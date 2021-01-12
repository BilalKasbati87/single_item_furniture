import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:single_item_furniture/screen/singlepage/components/star_icon_Items.dart';

import '../../../constants.dart';

class RatingAndQuantity extends StatefulWidget {
  const RatingAndQuantity({
    Key key,
  }) : super(key: key);

  @override
  _RatingAndQuantityState createState() => _RatingAndQuantityState();
}

class _RatingAndQuantityState extends State<RatingAndQuantity> {
  int numOfProduct = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding * 1.3, horizontal: kDefaultPadding),
            width: 245,
            height: 180,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Nashville armchair',
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StarIconItems(color: Color(0XFFFFC400)),
                    StarIconItems(color: Color(0XFFFFC400)),
                    StarIconItems(color: Color(0XFFFFC400)),
                    StarIconItems(color: Color(0XFFFFC400)),
                    StarIconItems(color: Color(0XFFC4C4C4)),
                  ],
                ),
                Text(
                  '£349.00',
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(width: kDefaultPadding),
          Container(
            width: 56,
            height: 180,
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
                ),
              ],
              color: kSecondaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (numOfProduct > 1) {
                        numOfProduct--;
                      }
                    });
                  },
                  child: Icon(Icons.remove),
                ),
                Container(
                  height: 31,
                  width: 31,
                  decoration: BoxDecoration(
                    color: Color(0XFFF5F5F5),
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: Text(numOfProduct.toString())),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      numOfProduct++;
                    });
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
