

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


import '../viewmodel/authendication_Provider.dart';
import '../../../constant/palette.dart';
import '../../../utils/adaptive_Layout.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
    final appkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
        final bool isDesktop = Adaptive.isDesktop(context);
            final bool isMobile = Adaptive.isMobile(context);

      return Consumer<LoginProvider>(
        builder: (context, snap, child) => Container(
          padding: EdgeInsets.all(30),
          margin:EdgeInsets.all(10),
          decoration:!isMobile?null:  BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                      color:palette.introbackground),
          child: Padding(
            padding:!isMobile?   EdgeInsets.symmetric(horizontal: 40):EdgeInsets.zero,
            child: Form(
              key: appkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",
                      style: GoogleFonts.roboto(
                          color: palette.textBlack,
                          fontWeight: FontWeight.w700,
                          fontSize: 32)),
                  Text(
                    "Please login to your account",
                    style: GoogleFonts.roboto(
                        fontSize: 16, color:palette.greyText),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Username",
                    style: GoogleFonts.roboto(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    width:isDesktop? MediaQuery.of(context).size.width *0.3:null,               child: Column(
                      children: [
                        TextFormField(
                          controller: snap.nameController,
                          validator: (value) =>
                              snap.nameValidation(value),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            contentPadding: EdgeInsets.all(15),
                            isDense: true,
                            
                          ),
                        ),
                        const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Password",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                      InkWell(onTap: () => snap.forgotPasswordEvent(context: context),
                        child: Text("Forgot password ?",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: palette.blue),
                            textAlign: TextAlign.end),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: snap.passwordController,
                    validator: (value) =>
                        snap.passwordValidation(value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(5))),
                      contentPadding: EdgeInsets.all(15),
                      isDense: true,
                     
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                      ],
                    ),
                  ),
                  
                  ElevatedButton(
                    onPressed: () {
                      snap.submitButtonClickEvent(
                        context: context,
                        appkey: appkey,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(210, 45),
                      backgroundColor: palette.button,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child:  Text("SUBMIT",
                        style: TextStyle(color:palette.white)),
                  ),
                ],
              ),
            ),
          ),
        ),)
          ;
        
          
  }
}