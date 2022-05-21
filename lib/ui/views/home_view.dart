import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_devpaul/helpers/clip_paths/background_home_clippath.dart';
import 'package:portfolio_devpaul/ui/shared/custom_button.dart';
import 'package:portfolio_devpaul/ui/shared/dev_paul_horizontal_logo.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Stack(children: [
        ClipPath(
          clipper: BackgroundHomeClippath(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const RadialGradient(
                  center: Alignment.bottomLeft,
                  radius: 1,
                  colors: [Color(0xff443357), Color(0xff1F2631)],
                )),
            width: double.infinity,
            height: 680,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.0285),
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const DevPaulHorizontalLogo()),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.06),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hola, mi nombre es',
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Paul Realpe, soy',
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Mobile Developer',
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard.",
                              style: GoogleFonts.inter(
                                  color: const Color(0xffA6A6A6),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Row(
                              children: [
                                CustomButton(
                                    text: 'Explore Now',
                                    backgroundColor: const Color(0xff2D69FD),
                                    borderColor: const Color(0xff2D69FD),
                                    buttonElevation: 10,
                                    internalVerticalPadding: 12,
                                    internalHorizontalPadding: 14,
                                    onPressed: () => print('Hola Amiguis')),
                                const SizedBox(
                                  width: 18,
                                ),
                                CustomButton(
                                    text: 'WhatsApp',
                                    backgroundColor: Colors.transparent,
                                    borderColor: Colors.white,
                                    internalVerticalPadding: 9,
                                    internalHorizontalPadding: 8,
                                    icon: Icons.whatsapp,
                                    onPressed: () => print('Hola Amiguis')),
                              ],
                            )
                          ],
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    CustomButton(
                        text: 'Create',
                        backgroundColor: Colors.transparent,
                        borderColor: Colors.white,
                        onPressed: () => print('Hola Amiguis'))
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: 20,
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.425,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    AppLocalizations.of(context)!.home_page_menu_home,
                    style: GoogleFonts.inter(
                        color: const Color(0xff002000),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    AppLocalizations.of(context)!.home_page_menu_about,
                    style: GoogleFonts.inter(
                        color: const Color(0xff002000),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    AppLocalizations.of(context)!.home_page_menu_contact,
                    style: GoogleFonts.inter(
                        color: const Color(0xff002000),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    AppLocalizations.of(context)!.home_page_menu_location,
                    style: GoogleFonts.inter(
                        color: const Color(0xff002000),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Positioned(
        //     top: MediaQuery.of(context).size.height * 0.025,
        //     left: MediaQuery.of(context).size.width * 0.02,
        //     child: SizedBox(width: 225, child: DevPaulHorizontalLogo()))
      ]),
    );
  }
}
