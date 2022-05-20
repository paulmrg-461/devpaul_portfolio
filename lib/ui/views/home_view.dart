import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_devpaul/ui/shared/dev_paul_horizontal_logo.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.425,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Home',
                style: GoogleFonts.inter(
                    color: const Color(0xff002000),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'About',
                style: GoogleFonts.inter(
                    color: const Color(0xff002000),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Contact',
                style: GoogleFonts.inter(
                    color: const Color(0xff002000),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Location',
                style: GoogleFonts.inter(
                    color: const Color(0xff002000),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 500,
          padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 18),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: const RadialGradient(
                center: Alignment.bottomLeft,
                radius: 1,
                colors: [Color(0xff443357), Color(0xff394053)],
              )),
          child: Column(
            children: const [DevPaulHorizontalLogo(), Spacer()],
          ),
        )
      ]),
    );
  }
}
