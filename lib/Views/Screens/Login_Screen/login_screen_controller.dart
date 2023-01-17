// ignore_for_file: unused_field, no_leading_underscores_for_local_identifiers, avoid_print

import 'package:brain_book_admin/Core/Services/API_MODELS/Login_Model/Login_Model.dart';
import 'package:brain_book_admin/Core/Services/API_PROVIDERS/Login_Provider/Login_Provider.dart';
import 'package:brain_book_admin/Core/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Core/Routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  //.....Instance.....//
  final LoginProvider _loginProvider = LoginProvider();

  //.....formKey and Variable Initializations.....//
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController =
      TextEditingController(text: "Brainbook22@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "11112222");

  //.....Observable Variables.....//
  final _rememberMe = false.obs;
  get rememberMe => _rememberMe.value;
  set rememberMe(value) => _rememberMe.value = value;

  var isPasswordHidden = true.obs;

  final _obscure = true.obs;
  get obscure => _obscure.value;
  set obscure(value) => _obscure.value = value;

  //.....Checkbox methods......//
  onCheckBoxChanged(bool? value) {
    _rememberMe.value = !_rememberMe.value;
  }

//.....Login Function for Calling A method from Login provider class......//
  void adminLogIn() async {
    var _result = await _loginProvider.loginUser(
        email: emailController.text, password: passwordController.text);
    if (_result is String) {
      Get.snackbar(
        "Error",
        _result,
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      LoginModel _userModel = _result;
      Get.find<GlobalController>().user = _userModel;
    }
    Get.toNamed(Routes.dashboardScreen);
  }
}
