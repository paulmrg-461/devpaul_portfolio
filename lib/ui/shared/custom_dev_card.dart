import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_devpaul/ui/shared/custom_button.dart';

class CustomDevCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String body;
  final String buttonText;
  final double width;
  final double height;
  final int delay;
  const CustomDevCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.body,
      required this.buttonText,
      required this.width,
      required this.height,
      required this.delay})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: const Duration(milliseconds: 2000),
      delay: Duration(milliseconds: delay),
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.18),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: const Color(0xff2D69FD),
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: const Color(0xff2D69FD).withAlpha(60),
                        blurRadius: 12.0,
                        spreadRadius: 7.0,
                        offset: const Offset(
                          7.0,
                          7.0,
                        ),
                      ),
                    ]),
                padding: const EdgeInsets.all(16),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 42,
                )),
            Text(
              title,
              style: GoogleFonts.inter(
                  color: const Color(0xffF2F0F6),
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              body,
              textAlign: TextAlign.justify,
              style: GoogleFonts.inter(
                  color: const Color(0xffF2F0F6),
                  fontSize: 14,
                  fontWeight: FontWeight.w100),
            ),
            CustomButton(
              text: buttonText,
              onPressed: () => print('Hola Amiguis'),
              backgroundColor: Colors.transparent,
              buttonElevation: 0,
              borderColor: const Color(0xff2D69FD),
            )
          ],
        ),
      ),
    );
  }
}
