

import 'package:atre_web_app/src/constant/otpTheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';


import '../viewmodel/authendication_Provider.dart';
import '../../../constant/palette.dart';
import '../../../utils/adaptive_Layout.dart';

class VerifyOtpForm extends StatefulWidget {
  const VerifyOtpForm({super.key});

  @override
  State<VerifyOtpForm> createState() => _VerifyOtpFormState();
}

class _VerifyOtpFormState extends State<VerifyOtpForm> {
    final appkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
       // final bool isDesktop = Adaptive.isDesktop(context);
            final bool isMobile = Adaptive.isMobile(context);

      return Consumer<LoginProvider>(
        builder: (context, snap, child) => Container(
          padding: const EdgeInsets.all(25),
          margin:const EdgeInsets.all(10),
          decoration:!isMobile?null:  BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                      color:palette.introbackground),
          child: Padding(
            padding:!isMobile?   const EdgeInsets.symmetric(horizontal: 40):EdgeInsets.zero,
            child: Form(
              key: appkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Verify your OTP",
                      style: GoogleFonts.roboto(
                          color: palette.textBlack,
                          fontWeight: FontWeight.w700,
                          fontSize: 32)),
                          const SizedBox(height: 10,),
                  Text(
                    "We have sent you OTP to your e-mail address for verification.\nPlease enter your 6 digit OTP sent to e**********@gmail.com",
 
                    style: GoogleFonts.roboto(
                        fontSize: 18, color:palette.greyText),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                 Pinput(
                   
                  length: 6,
                  obscureText: true,
                  defaultPinTheme: otptheme,
                 ),
                  
                    const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      snap.submitButtonClickEvent(
                        context: context,
                        appkey: appkey,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(160, 45),
                      backgroundColor: palette.button,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child:  Text("Verify OTP",
                        style: TextStyle(color:palette.white)),
                  ),
                  SizedBox(height: 15,),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text("Didn’t receive the OTP ? "),
                    InkWell(onTap: () => null,child: Text("Resend OTP",style: TextStyle(color: palette.button),))],
                  )
                ],
              ),
            ),
          ),
        ),)
          ;
        
          
  }
}