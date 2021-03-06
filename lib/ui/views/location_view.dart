import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_devpaul/ui/shared/dev_paul_horizontal_logo.dart';
import 'package:portfolio_devpaul/ui/shared/location_map.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            margin: const EdgeInsets.only(top: 10, bottom: 6),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                  vertical: MediaQuery.of(context).size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.home_page_menu_location,
                    style: GoogleFonts.inter(
                        color: const Color(0xff232835),
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    """Laborum ipsum pariatur fugiat occaecat quis est et non occaecat sit. Aliqua laboris velit labore ut irure. Ex nostrud ad aliqua enim anim est.""",
                    style: GoogleFonts.inter(
                        color: const Color(0xff7B7E86),
                        fontSize: 14,
                        fontWeight: FontWeight.w200),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: getMap()),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xff443357), Color(0xff394053)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const DevPaulHorizontalLogo(),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Column(
                          children: [
                            Text(
                              'Popay??n Cauca',
                              style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Colombia 190002',
                              style: GoogleFonts.inter(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            'assets/logos/facebook.svg',
                            semanticsLabel: 'Facebook Logo',
                            width: MediaQuery.of(context).size.width * 0.0285,
                            height: MediaQuery.of(context).size.width * 0.0285,
                          ),
                          SvgPicture.asset(
                            'assets/logos/twitter.svg',
                            semanticsLabel: 'Twitter Logo',
                            width: MediaQuery.of(context).size.width * 0.0285,
                            height: MediaQuery.of(context).size.width * 0.0285,
                          ),
                          SvgPicture.asset(
                            'assets/logos/linkedin.svg',
                            semanticsLabel: 'LinkedIn Logo',
                            width: MediaQuery.of(context).size.width * 0.0285,
                            height: MediaQuery.of(context).size.width * 0.0285,
                          ),
                          SvgPicture.asset(
                            'assets/logos/github.svg',
                            semanticsLabel: 'Github Logo',
                            width: MediaQuery.of(context).size.width * 0.0285,
                            height: MediaQuery.of(context).size.width * 0.0285,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Technologies',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Flutter',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                          Text(
                            'React',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                          Text(
                            'Kotlin',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                          Text(
                            'Swift',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                          Text(
                            'Python',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                          Text(
                            'Firebase',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Main links',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Home',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                          Text(
                            'About',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                          Text(
                            'Contact',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                          Text(
                            'Location',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: const Color(0xff9EA7AD),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Me',
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/logos/email.svg',
                                semanticsLabel: 'Email Logo',
                                width:
                                    MediaQuery.of(context).size.width * 0.0285,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              Text(
                                'co.devpaul@gmail.com',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: const Color(0xff9EA7AD),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/logos/phone.svg',
                                semanticsLabel: 'Phone Logo',
                                width:
                                    MediaQuery.of(context).size.width * 0.0285,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              Text(
                                '+(57) 3148580454',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: const Color(0xff9EA7AD),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/logos/location.svg',
                                semanticsLabel: 'Location Logo',
                                height:
                                    MediaQuery.of(context).size.width * 0.0285,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              Text(
                                'Popay??n Cauca Colombia\nCll 22N #7-29 - B/Ciudad Jard??n',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  color: const Color(0xff9EA7AD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
