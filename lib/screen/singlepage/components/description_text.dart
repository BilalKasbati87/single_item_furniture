import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'A contemporary twist on classic \nmid-century modern design.',
        style: GoogleFonts.poppins(fontSize: 18),
      ),
    );
  }
}
