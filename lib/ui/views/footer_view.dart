import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterView extends StatelessWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Footer',
            style: GoogleFonts.montserratAlternates(
                fontSize: 80, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
