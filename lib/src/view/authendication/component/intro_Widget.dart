import 'package:atre_web_app/src/constant/images.dart';


import 'package:atre_web_app/src/constant/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../utils/adaptive_Layout.dart';

class IntroWidget extends StatefulWidget {
  const IntroWidget({super.key});

  @override
  State<IntroWidget> createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget> {
  

  @override
  Widget build(BuildContext context) {
            final bool isMobile = Adaptive.isMobile(context);
           // final palette = Palette();

    return Container(
                  decoration:isMobile?null:  BoxDecoration(
                      image:  DecorationImage(
                          image: AssetImage(introImage),
                          alignment: Alignment.bottomCenter),
                      color:palette.introbackground),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.asset(companyNameImage),
                        Text(
                          "Advancing Health Responsibly",
                          style: GoogleFonts.dmSans(
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                  ),
                );
  }
}