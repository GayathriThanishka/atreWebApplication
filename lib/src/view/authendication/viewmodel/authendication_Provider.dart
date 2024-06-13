
import 'package:atre_web_app/src/view/authendication/screen/forgotPassword_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class LoginProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
   TextEditingController passwordController = TextEditingController();
  

   String? nameValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter your name";
    }
    return null;
  }

  String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter valid email id";
    }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter valid password";
    }
    return null;
  }

  void submitButtonClickEvent({required GlobalKey<FormState> appkey, required BuildContext context}) {
    if (appkey.currentState!.validate()) {
     
    }
  }
  void forgotPasswordEvent({required BuildContext context }){
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const ForgotPasswordPage();
    },));
  }
  //reset form validation
   String? newPassword(String? value) {
    if (value!.isEmpty) {
      return "Please enter new password";
    }
    return null;
  }
  String? confirmPassword(String? value) {
    if (value!.isEmpty) {
      return "Please enter new password";
    }
    return null;
  }

}