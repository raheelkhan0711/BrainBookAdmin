// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:brain_book_admin/Core/App-Utils/AppColor/colors.dart';
import 'package:brain_book_admin/Core/App-Utils/App-Images/images.dart';
import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Login_Screen/login_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Core/App-Utils/TextFormField/text_form_field.dart';

class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});
  // ValidatorController validatorController = Get.find();
  // bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          color: Colors.white.withOpacity(0.5),
          height: Get.height * 0.8,
          width: Get.width * 0.7,
          child: Padding(
            padding: const EdgeInsets.only(left: 150, right: 150, bottom: 30),
            child: Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  // const SizedBox(
                  //   height: 65,
                  // ),
                  Image.asset(
                    splashImage,
                    height: 120,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormFieldWidget(
                    controller: controller.emailController,
                    // validator: validatorController.emailValidator,
                    title: "Email",
                    icon: Icon(Icons.person_outlined, color: fontColorDark),
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Obx(
                    () => TextFormFieldWidget(
                      controller: controller.passwordController,
                      // validator: validatorController.passwordValidator,
                      title: "Password ",
                      icon: const Icon(
                        Icons.lock_open_outlined,
                        color: fontColorDark,
                      ),
                      obscureText: controller.obscure,
                      inkWell: InkWell(
                        onTap: () {
                          controller.obscure = !controller.obscure;
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 25),
                          child: Text(
                            controller.obscure ? "Show" : "Hide",
                            style: GoogleFonts.poppins(color: fontColorLight),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ButtonWidget(
                    title: "LOGIN",
                    onTap: () {
                      // Get.toNamed(Routes.dashboardScreen);
                      controller.adminLogIn();
                    },
                  ),
                  Spacer()
                  // const SizedBox(
                  //   height: 30,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
