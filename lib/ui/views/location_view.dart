import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_devpaul/ui/shared/dev_paul_horizontal_logo.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Location',
                style: GoogleFonts.montserratAlternates(
                    fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Spacer(),
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
                              'Popayán Cauca',
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
                            'assets/logos/instagram.svg',
                            semanticsLabel: 'Instagram Logo',
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
                            'Java',
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
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'co.devpaul@gmail.com',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: const Color(0xff9EA7AD),
                                  ),
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
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Popayán Cauca Colombia\nCll 22N #7-29 - B/Ciudad Jardín',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: const Color(0xff9EA7AD),
                                  ),
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
