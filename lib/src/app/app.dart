import 'package:atre_web_app/src/utils/providers.dart';

import 'package:atre_web_app/src/view/authendication/screen/resetPassword_Page.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(providers: provider,
      child: const MaterialApp(debugShowCheckedModeBanner: false,
        
        home:ResetPasswordPage()
      ),
    );
  }
}