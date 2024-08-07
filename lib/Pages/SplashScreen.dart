import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void NavigateToNextPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
            ),
            Positioned(
                left: -99,
                top: -146,
                child: Container(
                  height: 390,
                  width: 390,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 210,
                          spreadRadius: 100,
                          color: Color.fromRGBO(255, 199, 54, 0.20))
                    ],
                  ),
                )),
            Positioned(
                left: 135,
                child: Container(
                  height: 390,
                  width: 390,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 210,
                          spreadRadius: 100,
                          color: Color.fromRGBO(255, 94, 94, 0.12))
                    ],
                  ),
                )),
            Positioned(
                child: Container(
              height: 390,
              width: 390,
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.height * 0.135,
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.003,
                        left: MediaQuery.of(context).size.width * 0.006,
                        child: Text("Cutiee",
                            style: GoogleFonts.lilitaOne(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 49,
                                  fontWeight: FontWeight.w400,
                                  fontFeatures: [],
                                  letterSpacing: -3),
                            )),
                      ),
                      // // Stroked text as border.

                      Positioned(
                          left: MediaQuery.of(context).size.width * 0.0025,
                          child: Text("Cutiee",
                              style: GoogleFonts.lilitaOne(
                                textStyle: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w400,
                                  fontFeatures: [],
                                  letterSpacing: -3,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 2
                                    ..color = Colors.black,
                                ),
                              ))),
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.0025,
                        child: Text("Cutiee",
                            style: GoogleFonts.lilitaOne(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.w400,
                                  fontFeatures: [],
                                  letterSpacing: -3),
                            )),
                      )
                      // Solid text as fill.
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    "Do you enjoy adorning your home with adorable decorations?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manjari(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    "Discover a collection of all the charming products in one place, and indulge in the joy of shopping!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manjari(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.only(bo),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/DesignImages/HomeAvatarImage.png',
                          width: MediaQuery.of(context).size.width,
                        ),
                        Positioned(
                          bottom: 20,
                          right: 20,
                          left: 20,
                          child: InkWell(
                            onTap: NavigateToNextPage,
                            child: Image.asset(
                                'assets/DesignImages/HomeButtonImage.png'),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
