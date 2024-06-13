

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


import '../viewmodel/authendication_Provider.dart';
import '../../../constant/palette.dart';
import '../../../utils/adaptive_Layout.dart';

class ResetForm extends StatefulWidget {
  const ResetForm({super.key});

  @override
  State<ResetForm> createState() => _ResetFormState();
}

class _ResetFormState extends State<ResetForm> {
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
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Reset Password",
                      style: GoogleFonts.roboto(
                          color: palette.textBlack,
                          fontWeight: FontWeight.w700,
                          fontSize: 32)),
                  Text(
                    "Your new password must be different from your previous password",
                    style: GoogleFonts.roboto(
                        fontSize: 16, color:palette.greyText),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "New Password",
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
                              snap.newPassword(value),
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
                 
                      Text(
                        "Confirm Password",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                     
                  
                  
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: snap.passwordController,
                    validator: (value) =>
                        snap.confirmPassword(value),
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
                    child:  Text("Reset",
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