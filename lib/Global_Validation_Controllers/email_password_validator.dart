import 'package:get/get.dart';

class ValidatorController extends GetxController {
  String? Function(String?)? emailValidator = (String? email) {
    if (email!.isEmpty) {
      return 'email empty';
    } else if (email.length < 3) {
      return 'email short';
    } else if (!email.contains('@')) {
      return 'Enter a Valid Email Address i.e abc@xyz.com';
    } else if (!email.endsWith('.com')) {
      return 'Enter a Valid Email Address i.e abc@xyz.com';
    } else {
      return null;
    }
  };
  String? Function(String?)? passwordValidator = (String? password) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    if (password!.isEmpty) {
      return 'Password empty';
    } else {
      if (!regex.hasMatch(password)) {
        return 'Enter valid password i.e {Aa123456}';
      } else {
        return null;
      }
    }
  };

  // String? Function(String?)? verifyCodeValidator = (String? verifyCode) {
  //   if (verifyCode!.isEmpty) {
  //     return 'verifyCode empty';
  //   }
  //   return null;
  // };

  // String? Function(String?)? newPasswordValidator = (String? newpassword) {
  //   if (newpassword!.isEmpty) {
  //     return 'Password empty';
  //   } else if (newpassword.length < 3) {
  //     return 'Password short';
  //   } else if (newpassword.length > 25) {
  //     return 'Password long';
  //   }

  //   return null;
  // };
  // String? Function(String?)? confrinNewPasswordValidator =
  //     (String? cpnfrimnewpassword) {
  //   if (cpnfrimnewpassword!.isEmpty) {
  //     return 'Password empty';
  //   } else if (cpnfrimnewpassword.length < 3) {
  //     return 'Password short';
  //   } else if (cpnfrimnewpassword.length > 25) {
  //     return 'Password long';
  //   }

  //   return null;
  // };
}







   ///Note: Funtion for email Validation ////
  
  
// String? Function(String?)? emailValidator = (String? email) {
  //   if (email!.isEmpty) {
  //     return 'email empty';
  //   } else if (email.length < 3) {
  //     return 'email short';
  //   } else if (email.length > 30) {
  //     return 'email long';
  //   } else if (!email.contains("@gmail.com")) {
  //     return 'please fill the email field correctly';
  //   }
  //   return null;
  // };

 ///Note: Funtion for Password Validation ////

   // String? Function(String?)? passwordValidator = (String? password) {
    //   if (password!.isEmpty) {
    //     return 'Password empty';
    //   } else if (password.length < 3) {
    //     return 'Password short';
    //   } else if (password.length > 25) {
    //     return 'Password long';
    //   }else if (!password.contains('')) {
    //     return 'Password long';
    //   }

    //   return null;