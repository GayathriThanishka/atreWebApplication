import 'package:atre_web_app/src/view/authendication/component/forgotPassword_Form_Widget.dart';

import 'package:atre_web_app/src/view/authendication/component/intro_Widget.dart';

import 'package:flutter/material.dart';




import '../../../utils/adaptive_Layout.dart';


class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  // Form Key
    final appkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    final bool isMobile = Adaptive.isMobile(context);
    // final bool isTablet = Adaptive.isTablet(context);
    return  Scaffold(
      body:    Row(
            children: [
              if(!isMobile)
          const Expanded(
                flex: 1,
                child: IntroWidget()
              ),
               Expanded(
                child: Column(
                  mainAxisAlignment:!isMobile?MainAxisAlignment.center: MainAxisAlignment.start,
                  crossAxisAlignment: !isMobile? CrossAxisAlignment.start:CrossAxisAlignment.center,
                  children: [
                    if(isMobile)
                 const   IntroWidget(),
                 
                   if(isMobile)
                  const SizedBox(height: 50,),
                 const ForgotPasswordForm(),
                  if(isMobile)
                  Expanded(child: buildBottomImg())
                 
                  ],
                )
              ),
            ],
          ),
     
    
    );
  }
Widget  buildBottomImg(){
  return Image.asset("assets/Group 8776.png");
}
}