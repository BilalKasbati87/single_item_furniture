import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:single_item_furniture/screen/singlepage/single_screen.dart';

import '../../../constants.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        MenuItemCard(
          image: 'assets/images/1a.png',
          title: 'Nashville',
          price: '£349.00',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SinglePageScreen();
                },
              ),
            );
          },
        ),
        MenuItemCard(
          image: 'assets/images/3.png',
          title: 'Floor Lamp',
          price: '£129.00',
          press: () {},
        ),
        MenuItemCard(
          image: 'assets/images/4.png',
          title: 'Tripod  Lamp',
          price: '£119.00',
          press: () {},
        ),
        MenuItemCard(
          image: 'assets/images/5.png',
          title: 'Accent Chair',
          price: '£89.00',
          press: () {},
        ),
        MenuItemCard(
          image: 'assets/images/6.png',
          title: 'Loveseat Sofa',
          price: '£529.00',
          press: () {},
        ),
        MenuItemCard(
          image: 'assets/images/7.png',
          title: 'Marie stool',
          price: '£69.00',
          press: () {},
        ),
        MenuItemCard(
          image: 'assets/images/8.png',
          title: 'Rayner Chair',
          price: '£59.00',
          press: () {},
        ),
      ],
    );
  }
}

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({
    Key key,
    this.image,
    this.title,
    this.price,
    this.press,
    this.isEven,
  }) : super(key: key);
  final String image, title, price;
  final Function press;
  final bool isEven;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding * 1.3, horizontal: kDefaultPadding),
        margin: EdgeInsets.all(kDefaultPadding / 2),
        width: 150,
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
          children: [
            Image(
              image: AssetImage(image),
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 14, color: kFurnitureNameTextColor),
            ),
            Text(
              price,
              style: GoogleFonts.poppins(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
