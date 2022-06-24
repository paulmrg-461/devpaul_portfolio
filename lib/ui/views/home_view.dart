import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_devpaul/helpers/clip_paths/background_home_clippath.dart';
import 'package:portfolio_devpaul/providers/page_provider.dart';
import 'package:portfolio_devpaul/ui/shared/animated_asset_image.dart';
import 'package:portfolio_devpaul/ui/shared/custom_button.dart';
import 'package:portfolio_devpaul/ui/shared/custom_menu_item.dart';
import 'package:portfolio_devpaul/ui/shared/dev_paul_horizontal_logo.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageProvider pageProvider = Provider.of<PageProvider>(context);
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: [
          Stack(children: [
            ClipPath(
              clipper: BackgroundHomeClippath(),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
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
                                  left: MediaQuery.of(context).size.width *
                                      0.0285),
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: const DevPaulHorizontalLogo()),
                          const Spacer(),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.06),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!
                                      .home_page_title_1,
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 38,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  AppLocalizations.of(context)!
                                      .home_page_title_2,
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 38,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  AppLocalizations.of(context)!
                                      .home_page_title_3,
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
                                        text: AppLocalizations.of(context)!
                                            .home_page_explore_button,
                                        backgroundColor:
                                            const Color(0xff2D69FD),
                                        borderColor: const Color(0xff2D69FD),
                                        buttonElevation: 10,
                                        internalVerticalPadding: 12,
                                        internalHorizontalPadding: 14,
                                        onPressed: () => print('Hola Amiguis')),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    CustomButton(
                                        text: AppLocalizations.of(context)!
                                            .home_page_whatsapp_button,
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
                            text:
                                AppLocalizations.of(context)!.home_page_resume,
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
                      CustomMenuItem(
                          text:
                              AppLocalizations.of(context)!.home_page_menu_home,
                          onPressed: () => pageProvider.goTo(0),
                          delay: 100),
                      CustomMenuItem(
                          text: AppLocalizations.of(context)!
                              .home_page_menu_about,
                          onPressed: () => pageProvider.goTo(1),
                          delay: 300),
                      CustomMenuItem(
                          text: AppLocalizations.of(context)!
                              .home_page_menu_contact,
                          onPressed: () => pageProvider.goTo(2),
                          delay: 600),
                      CustomMenuItem(
                          text: AppLocalizations.of(context)!
                              .home_page_menu_location,
                          onPressed: () => pageProvider.goTo(3),
                          delay: 900),
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
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AnimatedAssetImage(
                      path: 'flutter',
                      onPressed: () => print('Hola flutter'),
                      delay: 100),
                  AnimatedAssetImage(
                      path: 'react',
                      onPressed: () => print('Hola flutter'),
                      delay: 300),
                  AnimatedAssetImage(
                      path: 'kotlin',
                      onPressed: () => print('Hola flutter'),
                      delay: 600),
                  AnimatedAssetImage(
                      path: 'swift',
                      onPressed: () => print('Hola flutter'),
                      delay: 900),
                  AnimatedAssetImage(
                    path: 'python',
                    onPressed: () => print('Hola flutter'),
                    delay: 1200,
                    paddingTop: 8,
                  ),
                  AnimatedAssetImage(
                      path: 'firebase',
                      onPressed: () => print('Hola flutter'),
                      delay: 1500),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
